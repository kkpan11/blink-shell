//////////////////////////////////////////////////////////////////////////////////
//
// B L I N K
//
// Copyright (C) 2016-2019 Blink Mobile Shell Project
//
// This file is part of Blink.
//
// Blink is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Blink is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Blink. If not, see <http://www.gnu.org/licenses/>.
//
// In addition, Blink is also subject to certain additional terms under
// GNU GPL version 3 section 7.
//
// You should have received a copy of these additional terms immediately
// following the terms and conditions of the GNU General Public License
// which accompanied the Blink Source Code. If not, see
// <http://www.github.com/blinksh/blink>.
//
////////////////////////////////////////////////////////////////////////////////

import BlinkFiles
import FileProvider
import Combine

import SSH

class FileProviderEnumerator: NSObject, NSFileProviderEnumerator {
  let identifier: BlinkItemIdentifier
  let translator: AnyPublisher<Translator, Error>
  var cancellableBag: Set<AnyCancellable> = []
  var currentAnchor: Int = 0

  init(enumeratedItemIdentifier: NSFileProviderItemIdentifier,
       domain: NSFileProviderDomain) {
    // TODO An enumerator may be requested for an open file, in order to enumerate changes to it.
    if enumeratedItemIdentifier == .rootContainer {
      self.identifier = BlinkItemIdentifier(domain.pathRelativeToDocumentStorage)
    } else {
      self.identifier = BlinkItemIdentifier(enumeratedItemIdentifier)
    }

    let path = self.identifier.path
    print("\(path) - Initialized enumerator ")

    self.translator = FileTranslatorCache.translator(for: domain.pathRelativeToDocumentStorage)
      .flatMap { t -> AnyPublisher<Translator, Error> in
        if !path.isEmpty {
          return t.cloneWalkTo(path)
        } else {
          return .just(t.clone())
        }
      }.eraseToAnyPublisher()

    // TODO Schedule an interval enumeration (pull) from the server.
    super.init()
  }

  func invalidate() {
    // TODO: perform invalidation of server connection if necessary
    // Stop the enumeration
    print("\(self.identifier.path) - Invalidate enumerator")
  }

  func enumerateItems(for observer: NSFileProviderEnumerationObserver, startingAt page: NSFileProviderPage) {
    /* TODO:
     - inspect the page to determine whether this is an initial or a follow-up request

     If this is an enumerator for a directory, the root container or all directories:
     - perform a server request to fetch directory contents
     If this is an enumerator for the active set:
     - perform a server request to update your local database
     - fetch the active set from your local database

     - inform the observer about the items returned by the server (possibly multiple times)
     - inform the observer that you are finished with this page
     */

    // TODO We may have to enumerate an already returned item, but have not found when that is triggered yet.
    // TODO page can be a Sorted by name or sorted by Date page, and we will have to return the items based on this.
    // This could be easily achieved from our Cache, requesting a specific path references, adding a sorter and then an "index".

    print("\(self.identifier.path) - enumeration requested")

    // Request or warm up local database.
    // The real list we return is the one from the remote.
    // Having a cache for local files and one for remotes could help us take action in the future to consolidate.
    var containerTranslator: Translator!
    translator
      .flatMap { t -> AnyPublisher<FileAttributes, Error> in
        containerTranslator = t
        return t.stat()
      }
      .map { containerAttrs -> Translator in
        // TODO We may be able to skip this if stat would return '.'
        let ref = BlinkItemReference(self.identifier,
                                     attributes: containerAttrs)
        FileTranslatorCache.store(reference: ref)
        return containerTranslator
      }
      .flatMap {
        Publishers.Zip($0.directoryFilesAndAttributes(),
                         Local().walkTo(self.identifier.url.path)
                          .flatMap { $0.directoryFilesAndAttributes() }
                          .catch { _ in AnyPublisher.just([]) })
      }
      .map { (remoteFilesAttributes, localFilesAttributes) -> [BlinkItemReference] in
        return remoteFilesAttributes.map { attrs -> BlinkItemReference in
          let fileIdentifier = BlinkItemIdentifier(parentItemIdentifier: self.identifier,
                                                   filename: attrs[.name] as! String)
          print(fileIdentifier.filename)
          let localAttrs = localFilesAttributes.first(where: { $0[.name] as! String == fileIdentifier.filename })

          let ref = BlinkItemReference(fileIdentifier,
                                       attributes: attrs,
                                       local: localAttrs)

          // Store the reference in the internal DB for later usage.
          FileTranslatorCache.store(reference: ref)
          return ref
        }
      }
      .sink(
        receiveCompletion: { completion in
          switch completion {
          case .failure(let error):
            print("ERROR \(error.localizedDescription)")
            observer.finishEnumeratingWithError(error)
          case .finished:
            observer.finishEnumerating(upTo: nil)
          }
        },
        receiveValue: { observer.didEnumerate($0) }).store(in: &cancellableBag)
  }

//  func enumerateChanges(for observer: NSFileProviderChangeObserver, from anchor: NSFileProviderSyncAnchor) {
//    /* TODO:
//     - query the server for updates since the passed-in sync anchor
//
//     If this is an enumerator for the active set:
//     - note the changes in your local database
//
//     - inform the observer about item deletions and updates (modifications + insertions)
//     - inform the observer when you have finished enumerating up to a subsequent sync anchor
//     */
//    // Schedule changes
//
//    print("\(self.identifier.path) - Enumerating changes at \(currentAnchor) anchor")
//    let data = "\(currentAnchor)".data(using: .utf8)
//    observer.finishEnumeratingChanges(upTo: NSFileProviderSyncAnchor(data!), moreComing: false)
//
//  }
//

  /**
   Request the current sync anchor.

   To keep an enumeration updated, the system will typically
   - request the current sync anchor (1)
   - enumerate items starting with an initial page
   - continue enumerating pages, each time from the page returned in the previous
     enumeration, until finishEnumeratingUpToPage: is called with nextPage set to
     nil
   - enumerate changes starting from the sync anchor returned in (1)
   - continue enumerating changes, each time from the sync anchor returned in the
     previous enumeration, until finishEnumeratingChangesUpToSyncAnchor: is called
     with moreComing:NO

   This method will be called again if you signal that there are more changes with
   -[NSFileProviderManager signalEnumeratorForContainerItemIdentifier:
   completionHandler:] and again, the system will enumerate changes until
   finishEnumeratingChangesUpToSyncAnchor: is called with moreComing:NO.

   NOTE that the change-based observation methods are marked optional for historical
   reasons, but are really required. System performance will be severely degraded if
   they are not implemented.
  */
//  func currentSyncAnchor(completionHandler: @escaping (NSFileProviderSyncAnchor?) -> Void) {
//
//    // todo
//    print("\(self.identifier.path) - Requested \(currentAnchor) anchor")
//
//    let data = "\(currentAnchor)".data(using: .utf8)
//    completionHandler(NSFileProviderSyncAnchor(data!))
//  }
}

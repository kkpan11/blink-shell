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

import SwiftUI

enum BlinkColors {
  static let bg = Color(red: 20.0 / 256.0, green: 30.0 / 256.0 , blue: 33.0  / 256.0)
//  static let yellow = Color(red: 255.0 / 256.0, green: 184.0 / 256.0, blue: 0.0 / 256.0)
  static let blink = Color(red: 10.0 / 256.0, green: 224.0 / 256.0, blue: 240.0 / 256.0)
  static let build = Color(red: 116.0 / 256.0, green: 251.0 / 256.0, blue: 152.0 / 256.0)
  static let code = Color(red: 255.0 / 256.0, green: 184.0 / 256.0, blue: 0.0 / 256.0)
  
  static let secondaryBtnBG = Color(red: 16.0 / 256.0, green: 40.0 / 256.0, blue: 41.0 / 256.0)
  static let secondaryBtnText = Color(red: 10.0 / 256.0, green: 224.0 / 256.0, blue: 240.0 / 256.0)
  static let secondaryBtnBorder = Color(red: 42.0 / 256.0, green: 80.0 / 256.0, blue: 83.0 / 256.0)
  
  static let primaryBtnBG = Color(red: 86.0 / 256.0, green: 62.0 / 256.0, blue: 0.0 / 256.0)
  static let primaryBtnText = BlinkColors.code
  static let primaryBtnBorder = Color(red: 168.0 / 256.0, green: 121.0 / 256.0, blue: 0.0 / 256.0)
  
  static let headerText = BlinkColors.code
  static let infoText = Color(red: 195.0 / 256.0, green: 219.0 / 256.0, blue: 219.0 / 256.0)
  
  static let linearGradient1 = Color(red: 20.0 / 256.0, green: 33.0 / 256.0, blue: 33.0 / 256.0)
//  static let linearGradient2 = Color(red: 9.0 / 256.0, green: 13.0 / 256.0, blue: 14.0 / 256.0)
  static let linearGradient2 = Color(red: (10 + 9.0) / 256.0, green: (10 + 13.0) / 256.0, blue: (10 + 14.0) / 256.0)
  
  static let radialGradient1 = Color(red: 1.0 / 256.0, green: 4.0 / 256.0, blue: 4.0 / 256.0)
  static let radialGradient2 = Color(red: 20.0 / 256.0, green: 33.0 / 256.0, blue: 33.0 / 256.0, opacity: 0)
  
  static let blinkBG = Color(red: 16.0 / 256.0, green: 40.0 / 256.0, blue: 41.0 / 256.0)
  static let buildBG = Color(red: 24.0 / 256.0, green: 56.0 / 256.0, blue: 32.0 / 256.0)
  static let codeBG = Color(red: 86.0 / 256.0, green: 62.0 / 256.0, blue: 0.0 / 256.0)
  
  static let blinkText = Color(red: 195.0 / 256.0, green: 219.0 / 256.0, blue: 219.0 / 256.0)
  static let buildText = Color(red: 207.0 / 256.0, green: 241.0 / 256.0, blue: 216.0 / 256.0)
  static let codeText = Color(red: 240.0 / 256.0, green: 221.0 / 256.0, blue: 171.0 / 256.0)
  
  static let termsText = Color(red: 92.0 / 256.0, green: 117.0 / 256.0, blue: 117.0 / 256.0)
  
  static let purchase = Color(red: 149.0 / 256.0, green: 104.0 / 256.0, blue: 203.0 / 256.0)
  
//  #5C7575
}

let BLINK_APP_FONT_NAME: String = Bundle.main.infoDictionary?["BLINK_APP_FONT"] as? String ?? "JetBrains Mono"

public enum BlinkFonts {
//  static let snippetIndex = Font.custom(BLINK_APP_FONT_NAME, size: 18, relativeTo: .body)
//  static let snippetContent = Font.custom(BLINK_APP_FONT_NAME, size: 18, relativeTo: .body)
  
  static let snippetEditContent = UIFont(name: BLINK_APP_FONT_NAME, size: 18)!
  
  static let header = Font.custom(BLINK_APP_FONT_NAME, size: 34, relativeTo: .title)
  static let headerCompact = Font.custom(BLINK_APP_FONT_NAME, size: 28, relativeTo: .title)
  
  static let info = Font.system(.title3)
  static let infoCompact = Font.system(.body)
  static let btn = Font.custom(BLINK_APP_FONT_NAME, size: 16, relativeTo: .body)
  static let btnSub = Font.custom(BLINK_APP_FONT_NAME, size: 12, relativeTo: .body)
  
  static let bullet = Font.custom(BLINK_APP_FONT_NAME, size: 24, relativeTo: .body).weight(.bold)
  static let bulletCompact = Font.custom(BLINK_APP_FONT_NAME, size: 18, relativeTo: .body).weight(.bold)
  static let bulletText = Font.custom(BLINK_APP_FONT_NAME, size: 18, relativeTo: .body).weight(.bold)
  static let bulletTextCompact = Font.custom(BLINK_APP_FONT_NAME, size: 14, relativeTo: .body).weight(.bold)
}

extension Shape {
    func fill<Fill: ShapeStyle, Stroke: ShapeStyle>(_ fillStyle: Fill, strokeBorder strokeStyle: Stroke, lineWidth: Double = 1) -> some View {
        self
            .stroke(strokeStyle, lineWidth: lineWidth)
            .background(self.fill(fillStyle))
    }
}

struct BlinkButtonWithoutHoverStyle: ButtonStyle {
  let textColor: Color
  let bgColor: Color
  let borderColor: Color
  let disabled: Bool
  let inProgress: Bool
  let minWidth: CGFloat?
  
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .multilineTextAlignment(.center)
      .lineSpacing(5.0)
      .font(BlinkFonts.btn)
      .foregroundColor(inProgress ? bgColor : textColor)
    
      .padding(EdgeInsets(top: 16, leading: 28, bottom: 16, trailing: 28))
      .frame(minWidth: minWidth)
      .background(
        RoundedRectangle(cornerRadius: 6, style: .continuous)
          .fill((configuration.isPressed) ?  borderColor : bgColor, strokeBorder: borderColor)
        
      )
      .opacity((disabled && !inProgress) ? 0.5 : 1.0)
    
      .overlay(Group {
        if inProgress {
          ProgressView().tint(textColor)
        }
      })
  }
  
  static func secondary(disabled: Bool, inProgress: Bool, minWidth: CGFloat? = nil) -> Self {
    Self(
      textColor: BlinkColors.secondaryBtnText,
      bgColor: BlinkColors.secondaryBtnBG,
      borderColor: BlinkColors.secondaryBtnBorder,
      disabled: disabled,
      inProgress: inProgress,
      minWidth: minWidth
    )
  }
  
  static func primary(disabled: Bool, inProgress: Bool, minWidth: CGFloat? = nil) -> Self {
    Self(
      textColor: BlinkColors.primaryBtnText,
      bgColor: BlinkColors.primaryBtnBG,
      borderColor: BlinkColors.primaryBtnBorder,
      disabled: disabled,
      inProgress: inProgress,
      minWidth: minWidth
    )
  }
  
}

struct BlinkButtonStyle: ButtonStyle {
  let textColor: Color
  let bgColor: Color
  let borderColor: Color
  let disabled: Bool
  let inProgress: Bool
  let minWidth: CGFloat?
  
  func makeBody(configuration: Configuration) -> some View {
      configuration.label
        .multilineTextAlignment(.center)
        .lineSpacing(5.0)
        .font(BlinkFonts.btn)
        .foregroundColor(inProgress ? bgColor : textColor)
      
        .padding(EdgeInsets(top: 16, leading: 28, bottom: 16, trailing: 28))
        .frame(minWidth: minWidth)
        .background(
          RoundedRectangle(cornerRadius: 6, style: .continuous)
            .fill((configuration.isPressed) ?  borderColor : bgColor, strokeBorder: borderColor)
          
        )
        .opacity((disabled && !inProgress) ? 0.5 : 1.0)
        
        .overlay(Group {
          if inProgress {
            ProgressView().tint(textColor)
          }
        })
        .hoverEffect(.lift)
  }
  
  static func secondary(disabled: Bool, inProgress: Bool, minWidth: CGFloat? = nil) -> Self {
    Self(
      textColor: BlinkColors.secondaryBtnText,
      bgColor: BlinkColors.secondaryBtnBG,
      borderColor: BlinkColors.secondaryBtnBorder,
      disabled: disabled,
      inProgress: inProgress,
      minWidth: minWidth
    )
  }
  
  static func primary(disabled: Bool, inProgress: Bool, minWidth: CGFloat? = nil) -> Self {
    Self(
      textColor: BlinkColors.primaryBtnText,
      bgColor: BlinkColors.primaryBtnBG,
      borderColor: BlinkColors.primaryBtnBorder,
      disabled: disabled,
      inProgress: inProgress,
      minWidth: minWidth
    )
  }
    
}



struct PageCtx {
  
  let classicsMode: Bool
  let proxy: GeometryProxy
  let dynamicTypeSize: DynamicTypeSize
  var horizontalCompact: Bool = false
  var verticalCompact: Bool = false
  let portrait: Bool
  let getStartedHandler: () -> ()
  let checkBlinkBuildHandler: () -> ()
  let checkBlinkPlusHandler: () -> ()
  let nextPageHandler: () -> ()
  let urlHandler: (URL) -> ()
  
  
  func pagePadding() -> EdgeInsets {
    let padding = EdgeInsets(top: 50, leading: 50, bottom: 50, trailing: 50)
    if proxy.size.width < 500 || proxy.size.height < 400 {
      return EdgeInsets(top: 20, leading: 10, bottom: 20, trailing: 10)
    }
    return padding
  }
  
  func outterPadding() -> CGFloat? {
    if proxy.size.width < 500 || proxy.size.height < 400 {
      return 0
    }
    return nil
  }
  
  func pagingPadding() -> EdgeInsets {
    let padding = EdgeInsets(top: 50, leading: 34, bottom: 50, trailing: 34)
    if proxy.size.width < 500 {
      return EdgeInsets(top: 50, leading: -12, bottom: 50, trailing: -12)
    }
    if proxy.size.width < 700 {
      return EdgeInsets(top: 50, leading: 0, bottom: 50, trailing: 0)
    }
    return padding
  }
  
  func headerFont() -> Font {
    verticalCompact ? BlinkFonts.headerCompact : BlinkFonts.header
  }
  
  func infoFont() -> Font {
    (verticalCompact || horizontalCompact) ? BlinkFonts.infoCompact : BlinkFonts.info
  }
  
  func bulletPadding() -> EdgeInsets {
    if dynamicTypeSize.isAccessibilitySize {
      return EdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
    }
    return horizontalCompact
    ? EdgeInsets(top: 4, leading: 6, bottom: 4, trailing: 6)
    : EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12)
  }
  
  func bulletFont() -> Font {
    verticalCompact ? BlinkFonts.bulletCompact : BlinkFonts.bullet
  }
  
  func bulletTextFont() -> Font {
    verticalCompact ? BlinkFonts.bulletTextCompact : BlinkFonts.bulletText
  }
  
  func pageMaxHeight() -> CGFloat {
    if dynamicTypeSize <= .medium {
      return 780
    }
    
    if dynamicTypeSize <= .large {
      return 820
    }
    
    if dynamicTypeSize <= .xLarge {
      return 900
    }
    
    if dynamicTypeSize <= .xxLarge {
      return 1000
    }
    
    return 1200
    
  }
  
  init(
    classicsMode: Bool,
    proxy: GeometryProxy, dynamicTypeSize: DynamicTypeSize, urlHandler:  @escaping (URL) -> (),
       getStartedHandler: @escaping () -> (),
       checkBlinkBuildHandler: @escaping () -> (),
       checkBlinkPlusHandler: @escaping () -> (),
       nextPageHandler: @escaping () -> ()
  ) {
    self.classicsMode = classicsMode
    self.proxy = proxy
    self.dynamicTypeSize = dynamicTypeSize
    self.getStartedHandler = getStartedHandler
    self.checkBlinkBuildHandler = checkBlinkBuildHandler
    self.checkBlinkPlusHandler = checkBlinkPlusHandler
    self.horizontalCompact =  proxy.size.width < 400
    self.verticalCompact = proxy.size.height < 706
    self.portrait = proxy.size.width < proxy.size.height
    self.urlHandler = urlHandler
    self.nextPageHandler = nextPageHandler
  }
  
  public func image(horizontal: String, vertical: String?) -> String {
    if let vertical = vertical {
      return self.portrait ? vertical : horizontal
    }
    return horizontal
  }
}

struct CallToActionButtons: View {
  let ctx: PageCtx
  let url: URL
  let text: Text
  
  var body: some View {
    HStack {
      Button(
        action: { ctx.urlHandler(url) },
        label: { text }
      )
      .buttonStyle(BlinkButtonStyle.secondary(disabled: false, inProgress: false))
      Spacer().frame(width: 20)
      
      Button("GET STARTED") {
        ctx.getStartedHandler()
      }.buttonStyle(BlinkButtonStyle.primary(disabled: false, inProgress: false))
    }
    .padding(.bottom, ctx.portrait ? 26 : 0)
  }
}

struct FreeUsersCallToActionButtons: View {
  let ctx: PageCtx
  let text: Text
  
  var body: some View {
    HStack {
      Button(
        action: {
          EntitlementsManager.shared.dismissPaywall()
        },
        label: { text }
      )
      .buttonStyle(BlinkButtonStyle.secondary(disabled: false, inProgress: false))
      Spacer().frame(width: 20)
      
      Button("GET STARTED") {
        ctx.getStartedHandler()
      }.buttonStyle(BlinkButtonStyle.primary(disabled: false, inProgress: false))
    }
    .padding(.bottom, ctx.portrait ? 26 : 0)
  }
}


struct TwoLineButton: View {
  let line1: Text
  let line2: String
  let disabled: Bool
  let inProgress: Bool
  let action: () -> ()
  
  var body: some View {
    Button("\(line1)\n\(Text(line2).font(BlinkFonts.btnSub))", action: action)
    .buttonStyle(BlinkButtonStyle.primary(disabled: disabled, inProgress: inProgress, minWidth: 280))
    .frame(minHeight: 68)
    .disabled(disabled)
  }
}


struct TermsButtons: View {
  let ctx: PageCtx
  @StateObject var _purchases = PurchasesUserModel.shared
  @State var opacity: CGFloat = 0.5
  
  var body: some View {
    HStack {
      Button("TERMS") {
        ctx.urlHandler(URL(string: "https://blink.sh/build-tos")!)
      }
      .foregroundColor(BlinkColors.termsText).font(BlinkFonts.btnSub)
      
      Text("•").foregroundColor(BlinkColors.termsText).font(BlinkFonts.btnSub)
      
      if _purchases.restoreInProgress {
        Text("RESTORING...").foregroundColor(BlinkColors.termsText).font(BlinkFonts.btnSub).opacity(self.opacity).onAppear(perform: {
          withAnimation(.easeOut.repeatForever(autoreverses: true)) {
            self.opacity = self.opacity == 1.0 ? 0.5 : 1.0
          }
        })
      } else {
        Button("RESTORE PURCHASES") {
          _purchases.restorePurchases()
        }
        .foregroundColor(BlinkColors.termsText).font(BlinkFonts.btnSub)
      }
    }
    .padding(.bottom, ctx.portrait ? 26 : 0)
  }
}

struct PageInfo: Identifiable {
  let idx: Int
  let title: String
  let info: Text
  let image: String
  let verticalImage: String?
  let imageMaxSize: CGSize
  let url: URL
  let linkText: Text
  
  var id: Int { idx }
  
  init(idx: Int, title: String, linkText: Text, url: URL, info: Text, image: String, imageMaxSize: CGSize = CGSize(width: 700, height: 450)) {
    self.idx = idx
    self.title = title
    self.linkText = linkText
    self.url = url
    self.info = info
    self.image = image
    self.verticalImage = nil
    self.imageMaxSize = imageMaxSize
  }
  
  init(idx: Int, title: String, linkText: Text, url: URL, info: Text, image: String, verticalImage: String, imageMaxSize: CGSize = CGSize(width: 700, height: 450)) {
    self.idx = idx
    self.title = title
    self.linkText = linkText
    self.url = url
    self.info = info
    self.image = image
    self.verticalImage = verticalImage
    self.imageMaxSize = imageMaxSize
  }
  
  static func pages() -> [PageInfo] {
    [
      PageInfo(
        idx: 1,
        title: "MULTIPLE TERMINALS & WINDOWS",
        linkText: Text("READ DOCS"),
        url: URL(string: "https://docs.blink.sh/basics/navigation")!,
        info: Text("Use **pinch** to zoom the terminal. Use **two finger tap** to create a new shell. Use **slide** to move between shells. Use **three finger tap** for menu. Type **help** if you need it."),
        image: "intro-windows"
      ),
      PageInfo(
        idx: 2,
        title: "YOUR HOSTS & KEYS, EVERYWHERE",
        linkText: Text("READ DOCS"),
        url: URL(string: "https://docs.blink.sh/basics/hosts")!,
        info: Text("Type **`config`** to enter the configuration. Setup remote connections through Hosts and Keys. Add special keys and keyboard shortcuts. Customize the shell appearance through fonts and themes."),
        image: "intro-settings"
      ),
      PageInfo(
        idx: 3,
        title: "SSH, MOSH & BASIC TOOLS",
        linkText: Text("\(Image(systemName: "play.rectangle.fill")) WATCH"),
        url: URL(string: "https://youtube.com/shorts/VYmrSlG9lX0")!,
        info: Text("Type **`mosh`** for high-performance remote shells. Type **`ssh`** for secure shells and tunnels. Type **`sftp`** or **`scp`** for secure file transfer. Have access to UNIX tools like **`cd`**, **`ls`**, **`ping`**, etc..."),
        image: "intro-commands"
      ),
      PageInfo(
        idx: 4,
        title: "BLINK CODE, YOUR NEW SUPERPOWER",
        linkText: Text("READ DOCS"),
        url: URL(string: "https://docs.blink.sh/advanced/code")!,
        info: Text("Use **`code`** for VS Code editor capabilities. Edit local files, remote files, and even connect to GitHub Codespaces, GitPod or others. All within a first class iOS experience adapted to your device."),
        image: "intro-code",
        imageMaxSize: CGSize(width: 680, height: 400)
      ),
      PageInfo(
        idx: 5,
        title: "BUILD YOUR DEV ENVIRONMENTS",
        linkText: Text("\(Image(systemName: "play.rectangle.fill")) WATCH"),
        url: URL(string: "https://youtu.be/78XukJvz5vg")!,
        
        info: Text("Use **`build`** to access instant dev environments for any task. Use our default Hacker Tools container for coding on Python, JS, Go, Rust, C and many other languages. Connect containers to run any application."),
        image: "intro-build-horizontal",
        verticalImage: "intro-build-vertical"
      ),
      
    ]
  }
}

struct PageView: View {
  let ctx: PageCtx
  let info: PageInfo
  
  var body: some View {
    VStack {
      Text(info.title)
        .font(ctx.headerFont())
        .foregroundColor(BlinkColors.headerText)
        .multilineTextAlignment(.center)
      Spacer()
      Image(ctx.image(horizontal: info.image, vertical: info.verticalImage))
        .resizable()
        .scaledToFit()
        .frame(maxWidth: info.imageMaxSize.width , maxHeight: info.imageMaxSize.height)
        .padding()
      Spacer()
      info.info
        .font(ctx.infoFont())
        .multilineTextAlignment(.center)
        .foregroundColor(BlinkColors.infoText)
        .frame(maxWidth: 810)
        .padding(.bottom)
      Spacer()
      CallToActionButtons(ctx: ctx, url: info.url, text: info.linkText)
    }.padding(ctx.pagePadding())
  }
}

struct ShellBulletView: View {
  let ctx: PageCtx
  let showList: Bool
  
  var body: some View {
    VStack {
      HStack(alignment: .firstTextBaseline) {
        Text("SHELL")
          .font(ctx.bulletFont()).foregroundColor(BlinkColors.blink)
          .padding(ctx.bulletPadding())
          .background(RoundedRectangle(cornerRadius: 6.0).fill(BlinkColors.blinkBG))
        Text("into remote machines using SSH and Mosh.").font(ctx.bulletTextFont()).foregroundColor(BlinkColors.blink)
      }
      if showList {
        Text("Use Secure Keys, Certificates & HW • Jump Hosts • Agent • SFTP ").font(Font.system(.callout)).foregroundColor(BlinkColors.blinkText).multilineTextAlignment(.center).padding([.leading, .trailing])
      }
    }
  }
}

struct ShellClassicBulletView: View {
  let ctx: PageCtx
  let showList: Bool
  
  var body: some View {
    VStack {
      HStack(alignment: .firstTextBaseline) {
        Text("SHELL")
          .font(ctx.bulletFont()).foregroundColor(BlinkColors.blink)
          .padding(ctx.bulletPadding())
          .background(RoundedRectangle(cornerRadius: 6.0).fill(BlinkColors.blinkBG))
        Text("into remote machines using SSH and Mosh.").font(ctx.bulletTextFont()).foregroundColor(BlinkColors.blink)
      }
      if showList {
        Text("Classic functionality • Secure keys • Jump Hosts • Agent • SFTP ").font(Font.system(.callout)).foregroundColor(BlinkColors.blinkText).multilineTextAlignment(.center).padding([.leading, .trailing])
      }
    }
  }
}


struct BuildBulletView: View {
  let ctx: PageCtx
  let showList: Bool
  
  var body: some View {
    VStack {
      HStack(alignment: .firstTextBaseline) {
        Text("BUILD")
          .font(ctx.bulletFont()).foregroundColor(BlinkColors.build)
          .padding(ctx.bulletPadding())
          .background(RoundedRectangle(cornerRadius: 6.0).fill(BlinkColors.buildBG))
        Text("environments for any dev task, in seconds.").font(ctx.bulletTextFont()).foregroundColor(BlinkColors.build)
      }
      if showList {
        Text("Run Python, Go, Rust, and others •\u{00a0}2\u{00a0}vCPU •\u{00a0}4\u{00a0}GB\u{00a0}RAM •\u{00a0}50\u{00a0}hours/month")
          .font(Font.system(.callout)).foregroundColor(BlinkColors.buildText)
          .multilineTextAlignment(.center)
          .padding([.leading, .trailing])
      }
    }
  }
}

struct CodeBulletView: View {
  let ctx: PageCtx
  let showList: Bool
  
  var body: some View {
    VStack {
      HStack(alignment: .firstTextBaseline) {
        Text("CODE")
          .font(ctx.bulletFont()).foregroundColor(BlinkColors.code)
          .padding(ctx.bulletPadding())
          .background(RoundedRectangle(cornerRadius: 6.0).fill(BlinkColors.codeBG))
        Text("using the world’s most popular editor.").font(ctx.bulletTextFont()).foregroundColor(BlinkColors.code)
      }
      if showList {
        Text("Edit local files • Edit remote files • Interface adapted to your mobile device")
          .font(Font.system(.callout))
          .foregroundColor(BlinkColors.codeText)
          .multilineTextAlignment(.center)
          .padding([.leading, .trailing])
      }
    }
  }
}

struct PageWelcomeView: View {
  let ctx: PageCtx
  @StateObject var _purchases = PurchasesUserModel.shared
  
  var body: some View {
    VStack {
      
      Text("WELCOME TO BLINK")
        .font(ctx.headerFont())
        .foregroundColor(BlinkColors.headerText)
        .multilineTextAlignment(.center)
      
      VStack(alignment: .center, spacing: 20) {
        Spacer()
        ShellBulletView(ctx: ctx, showList: false)
        BuildBulletView(ctx: ctx, showList: false)
        CodeBulletView(ctx: ctx, showList: false)
        Spacer()
      }
      
      Spacer()
      Text("Your mobile device is small, but with Blink, it can take on Big Jobs. Start with our walkthrough to see Blink’s full potential. Then choose one of our packages, and let’s get to work!")
        .font(ctx.infoFont())
        .multilineTextAlignment(.center)
        .foregroundColor(BlinkColors.infoText)
        .frame(maxWidth: 810)
        .padding(.bottom)
      Spacer()
      HStack {
        Button(
          action: ctx.nextPageHandler,
          label: { Text("CONTINUE") }
        )
        .buttonStyle(BlinkButtonStyle.secondary(disabled: false, inProgress: false))
      }
      .padding(.bottom, ctx.portrait ? 26 : 0)
    }.padding(ctx.pagePadding())
  }
}

struct PageBlinkPlusBuildView: View {
  let ctx: PageCtx
  @StateObject var _purchases = PurchasesUserModel.shared
  
  var body: some View {
    VStack {
      
      Text(ctx.horizontalCompact ? "BLINK+BUILD, THE TOOLBOX FOR DEV WORK" : "BLINK+BUILD, THE FULL TOOLBOX FOR DEV WORK")
        .font(ctx.headerFont())
        .foregroundColor(BlinkColors.headerText).multilineTextAlignment(.center)
      
      VStack(alignment: .center, spacing: 20) {
        Spacer()
        ShellBulletView(ctx: ctx, showList: true)
        CodeBulletView(ctx: ctx, showList: true)
        BuildBulletView(ctx: ctx, showList: true)
        Spacer()
      }
      
      VStack {
        TwoLineButton(
          line1: Text(_purchases.blinkPlusBuildSubscribeButtonText1()),
          line2: _purchases.blinkPlusBuildSubscribeButtonText2(),
          disabled: _purchases.restoreInProgress || _purchases.purchaseInProgress,
          inProgress: _purchases.purchaseInProgress || _purchases.formattedBlinkPlusBuildPriceWithPeriod() == nil
        ) {
          Task {
            await _purchases.purchaseBlinkPlusBuildWithValidation()
          }
        }
        .alert("Info", isPresented: $_purchases.restoredPurchaseMessageVisible) {
          Button("OK") {
            EntitlementsManager.shared.dismissPaywall()
          }
        } message: {
          Text(_purchases.restoredPurchaseMessage)
        }
        Button("OR GET BLINK+ ALONE TO\nCONNECT TO YOUR ENVIRONMENTS") {
          ctx.checkBlinkPlusHandler()
        }
        .buttonStyle(BlinkButtonWithoutHoverStyle.secondary(disabled: _purchases.restoreInProgress || _purchases.purchaseInProgress, inProgress: false))
        .disabled(_purchases.restoreInProgress || _purchases.purchaseInProgress)
        .padding()
      }
      if !ctx.classicsMode {
        TermsButtons(ctx: ctx)
      }
    }
    .padding(ctx.pagePadding())
  }
}

struct PageBlinkPlusView: View {
  let ctx: PageCtx
  @StateObject var _purchases = PurchasesUserModel.shared
  
  var body: some View {
    VStack {
      Text("THE SHELL OF CHOICE FOR DEVELOPERS FOR 7 YEARS")
        .font(ctx.headerFont())
        .foregroundColor(BlinkColors.headerText)
        .multilineTextAlignment(.center)
      
      VStack(alignment: .center, spacing: 20) {
        Spacer()
        ShellBulletView(ctx: ctx, showList: true)
        CodeBulletView(ctx: ctx, showList: true)
        VStack {
          HStack(alignment: .firstTextBaseline) {
            Text("BUILD")
              .font(BlinkFonts.bullet).foregroundColor(BlinkColors.build)
              .padding(ctx.bulletPadding())
              .background(RoundedRectangle(cornerRadius: 6.0).fill(BlinkColors.buildBG))
            Text("as you go for \(_purchases.formattedBuildPriceWithPeriod() ?? "").")
              .font(BlinkFonts.bulletText).foregroundColor(BlinkColors.build)
          }
        }
        Spacer()
      }
      
      VStack() {
        
        TwoLineButton(
          line1: Text("GET BLINK+, \(_purchases.formattedPlusPriceWithPeriod()?.uppercased() ?? "") (~~$29.99/YEAR~~)"),
          line2: "OFFER ENDS SOON",
          disabled: _purchases.restoreInProgress || _purchases.purchaseInProgress,
          inProgress: _purchases.purchaseInProgress || _purchases.formattedPlusPriceWithPeriod() == nil
        ) {
          Task {
            await _purchases.purchaseBlinkShellPlusWithValidation()
          }
        }.frame(maxWidth: .infinity)
          .alert("Info", isPresented: $_purchases.restoredPurchaseMessageVisible) {
            Button("OK") {
              EntitlementsManager.shared.dismissPaywall()
            }
          } message: {
            Text(_purchases.restoredPurchaseMessage)
          }
        
        Button("GET THE FULL TOOLBOX WITH BLINK+BUILD") {
          ctx.checkBlinkBuildHandler()
        }.buttonStyle(BlinkButtonWithoutHoverStyle.secondary(disabled: _purchases.restoreInProgress || _purchases.purchaseInProgress, inProgress: false))
          .padding().id("switch to blink+build")
      }
      if !ctx.classicsMode {
        TermsButtons(ctx: ctx)
      }
    }.padding(ctx.pagePadding())
  }
}

struct PageFreeUsersView: View {
  let ctx: PageCtx
  
  var body: some View {
    VStack {
        Text("BLINK+BUILD FREE TRIAL")
          .font(ctx.headerFont())
          .foregroundColor(BlinkColors.headerText)
          .multilineTextAlignment(.center)
      ScrollView {
        Text("""
Dear Blink User,

It's been a year since we launched our Free version, and we tried our best to make it work by providing unrestricted access with only a metered paywall. Unfortunately, the metered paywall has been perceived as an obstacle, detracting from our intended experience.

As a premium application for all sorts of developers, we don't want to be in the business of blocking features or making the user experience more difficult. So starting today, we are moving to a trial period that includes all features for Blink Shell, Build & Code, and represents our vision for the future of the app.

To make this transition easier, you can continue using this free version for a week without metered paywalls. And to help you keep Blink as your Shell of choice, if you upgrade to Blink+ this week, you will get our **first discount ever, only $14.99 for the first year**.

_Thanks for your support,_
_The Blink Shell team_
""").frame(maxWidth: 600)
          .font(ctx.infoFont())
          .foregroundColor(BlinkColors.infoText)
          .padding()
      }
      .padding(.bottom)
      FreeUsersCallToActionButtons(ctx: ctx, text: Text("DISMISS"))
    }.padding(ctx.pagePadding())
  }
}

struct OfferView: View {
  let ctx: PageCtx
  let page: LastPageState
  
  var body: some View {
    VStack {
      switch page {
      case .blinkBuild: PageBlinkPlusBuildView(ctx: ctx).transition(.move(edge: .top))
      case .blinkPlus: PageBlinkPlusView(ctx: ctx).transition(.move(edge: .bottom))
      }
    }
  }
}

struct OfferForFreeAndClassicsView: View {
  
  @Environment(\.dynamicTypeSize) var dynamicTypeSize
  @State var offerPage = LastPageState.blinkBuild
  @StateObject var _purchases = PurchasesUserModel.shared
  
  var body: some View {
    GeometryReader { proxy in
      
      let ctx = PageCtx(
        classicsMode: true,
        proxy: proxy,
        dynamicTypeSize: dynamicTypeSize,
        urlHandler: {_ in},
        getStartedHandler: { },
        checkBlinkBuildHandler: {
          withAnimation {
            offerPage = .blinkBuild
          }
        },
        checkBlinkPlusHandler: {
          withAnimation {
            offerPage = .blinkPlus
          }
        },
        nextPageHandler: {}
      )
      OfferView(ctx: ctx, page: offerPage)
        .frame(width: proxy.size.width, height: proxy.size.height)
        .alert(errorMessage: $_purchases.alertErrorMessage)
        .padding(.top, 50)
        .ignoresSafeArea()
        .background(
          Rectangle()
            .fill(
              BlinkColors.bg
            ).overlay(
              Rectangle()
                .fill(
                  LinearGradient(colors: [BlinkColors.linearGradient1, BlinkColors.linearGradient2], startPoint: UnitPoint(x: 0.5, y: 0.0), endPoint: UnitPoint(x:0.5, y:1.0))
                )
            )
            .overlay(
              Rectangle()
                .fill(
              RadialGradient(colors: [BlinkColors.radialGradient1, BlinkColors.radialGradient2], center: UnitPoint(x: 0.5, y: 0.5), startRadius: 0, endRadius:max(proxy.size.width, proxy.size.height))
                ).opacity(0.4)
            ).ignoresSafeArea(.all)
        )
    }
    
  }
}


struct IntroView: View {
  
  let urlHandler: (URL) -> Void
  @Environment(\.dynamicTypeSize) var dynamicTypeSize
  @State var pages = PageInfo.pages()
  
  @StateObject var _purchases = PurchasesUserModel.shared
  @StateObject var _entitlements = EntitlementsManager.shared
  
  @State var offerPage = LastPageState.blinkBuild
  
  @State var pageIndex = 0
  let firstPageIndex = 0
  let startPageIndex = 6
  let lastPageIndex = 6
  
  init(urlHandler: @escaping (URL) -> Void) {
    self.urlHandler = urlHandler
  }
  
  var body: some View {
    GeometryReader { proxy in
      
      let ctx = PageCtx(
        classicsMode: false,
        proxy: proxy,
        dynamicTypeSize: dynamicTypeSize,
        urlHandler: urlHandler,
        getStartedHandler: {
          withAnimation {
            self.pageIndex = self.startPageIndex
          }
        },
        checkBlinkBuildHandler: {
          withAnimation {
            offerPage = .blinkBuild
          }
        },
        checkBlinkPlusHandler: {
          withAnimation {
            offerPage = .blinkPlus
          }
        },
        nextPageHandler: {
          if self.pageIndex < lastPageIndex {
            withAnimation {
              self.pageIndex += 1
            }
          }
        }
      )
      
      TabView(selection: $pageIndex) {
        PageWelcomeView(ctx: ctx).tag(0)
        ForEach(pages) { info in
          PageView(ctx: ctx, info: info).tag(info.idx)
        }
        OfferView(ctx: ctx, page: offerPage).tag(6)
        
      }
      .tabViewStyle(.page(indexDisplayMode: ctx.portrait ? .always : .never))
      .overlay(
        HStack {
          if !ctx.portrait {
            Button {
              if self.pageIndex > self.firstPageIndex {
                withAnimation {
                  self.pageIndex -= 1
                }
              }
            } label: {
              Image(systemName: "chevron.compact.left").font(.title).foregroundColor(BlinkColors.code)
                .padding()
            }
            .opacity(pageIndex == self.firstPageIndex ? 0.3 : 1.0).disabled(pageIndex == self.firstPageIndex)
            .hoverEffect(.highlight)
            .keyboardShortcut(.leftArrow)
            Spacer()
            Button {
              if self.pageIndex < lastPageIndex {
                withAnimation {
                  self.pageIndex += 1
                }
              }
            } label: {
              Image(systemName: "chevron.compact.right").font(.title).foregroundColor(BlinkColors.code)
                .padding()
            }
            
            .opacity(pageIndex == lastPageIndex ? 0.3 : 1.0).disabled(pageIndex == lastPageIndex)
            .hoverEffect(.highlight)
            .keyboardShortcut(.rightArrow)
          }
        }
          .padding(ctx.pagingPadding())
      )
      .frame(maxWidth: 986, maxHeight: ctx.pageMaxHeight())
      .background(
        RoundedRectangle(cornerRadius: 21.67, style: .continuous)
          .fill(
            BlinkColors.bg
          ).overlay(
            RoundedRectangle(cornerRadius: 21.67, style: .continuous)
              .fill(
                LinearGradient(colors: [BlinkColors.linearGradient1, BlinkColors.linearGradient2], startPoint: UnitPoint(x: 0.5, y: 0.0), endPoint: UnitPoint(x:0.5, y:1.0))
              )
          )
          .overlay(
            RoundedRectangle(cornerRadius: 21.67, style: .continuous)
              .fill(
            RadialGradient(colors: [BlinkColors.radialGradient1, BlinkColors.radialGradient2], center: UnitPoint(x: 0.5, y: 0.5), startRadius: 0, endRadius:max(proxy.size.width, proxy.size.height))
              ).opacity(0.4)
          )
      )
      .padding(.all, ctx.outterPadding())
      .frame(width: proxy.size.width, height: proxy.size.height)
      .alert(errorMessage: $_purchases.alertErrorMessage)
//      .overlay(Text("\(proxy.size.width)x\(proxy.size.height)").foregroundColor(.red))
    }
  }
}

struct IntroWindow: View {
  let urlHandler: (URL) -> Void

  var body: some View {
      IntroView(
        urlHandler: self.urlHandler
      ).background(Color.black, ignoresSafeAreaEdges: .all)
  }
}


enum LastPageState {
  case blinkBuild
  case blinkPlus
}

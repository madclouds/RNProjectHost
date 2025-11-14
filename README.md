# RNProjectHost

iOS host app that embeds and displays content from a React Native Rock module called **RNProject**.

## XCFrameworks

Three frameworks enable React Native rendering:

- **RNProjectReact.xcframework** - Compiled React Native module
- **ReactBrownfield.xcframework** - Brownfield integration layer
- **hermes.xcframework** - JavaScript engine

## Getting Started

1. Open `RNProjectHost.xcodeproj` in Xcode
2. Build and run (⌘R)

The app initializes React Native on launch and displays the RNProject module as root view controller.

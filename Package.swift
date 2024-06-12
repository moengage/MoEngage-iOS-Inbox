// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.16.2"
let checksum = "04c28f1f9ce5dd07d6856d62bdb27095cf377680ab17c34cac2d14cb11d30224"
let package = Package(
    name: "MoEngageInbox",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "MoEngageInbox",
            targets: ["MoEngageInboxSPM","MoEngageInbox"]),
    ],
    dependencies: [
        .package(name: "MoEngage-iOS-SDK",url: "https://github.com/moengage/MoEngage-iOS-SDK.git", "9.17.2"..<"9.18.0"),
        .package(name: "MoEngageRichNotification",url: "https://github.com/moengage/MoEngage-iOS-RichNotification.git", "7.16.0"..<"7.17.0")
    ],
    targets: [
        .target(name: "MoEngageInboxSPM", dependencies: ["MoEngage-iOS-SDK","MoEngageRichNotification"], path: "Sources/..",exclude: ["MoEngageInbox.podspec", "README.md", "LICENSE","CHANGELOG.md","Images/moe_logo_blue.png"]),
        .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/MoEngage-iOS-Inbox/releases/download/\(version)/MoEngageInbox.xcframework.zip", checksum: checksum)
    ],
    swiftLanguageVersions: [.v5]
)

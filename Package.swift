// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoEngageInbox",
    products: [
        .library(
            name: "MoEngageInbox",
            targets: ["MoEngageInboxSPM","MoEngageInbox"]),
    ],
    dependencies: [
        .package(name: "MoEngage-iOS-SDK",url: "https://github.com/moengage/MoEngage-iOS-SDK.git", from: "9.4.0"),
        .package(name: "MoEngageRichNotification",url: "https://github.com/moengage/MoEngage-iOS-RichNotification.git", from: "7.4.0")
    ],
    targets: [
        .target(name: "MoEngageInboxSPM", dependencies: ["MoEngage-iOS-SDK","MoEngageRichNotification"], path: "Sources/..",exclude: ["MoEngageInbox.podspec", "README.md","./Frameworks/MoEngageInbox.xcframework", "LICENSE","CHANGELOG.md","Images/moe_logo_blue.png"]),
        .binaryTarget(name: "MoEngageInbox",path: "./Frameworks/MoEngageInbox.xcframework")
    ]
)

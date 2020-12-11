// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlltKit",
    platforms: [
        .iOS(.v13), .tvOS(.v13)
    ],
    products: [
        .library(
            name: "AlltKit",
            type: .dynamic,
            targets: ["AlltKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket", from: "7.6.4"),
        .package(url: "https://github.com/tadija/AEXML.git", from: "4.6.0"),
        .package(name: "Swifter", url: "https://github.com/httpswift/swifter.git", .upToNextMajor(from: "1.5.0"))
    ],
    targets: [
           .binaryTarget(name: "AlltKit", url: "https://github.com/allt-tv/AlltKit-SP/releases/download/v1.0.0-beta2/AlltKit-1.0.0-beta2.zip", 1.0.0-beta2checksum: "82e22d27a8ca7c2a9f589e70d93bc5a095a2e0cc1ea5e3001ebc928a27a24585")
    ]
)

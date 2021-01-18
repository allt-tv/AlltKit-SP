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
        .binaryTarget(name: "AlltKit", url: "https://github.com/allt-tv/AlltKit-SP/releases/download/v1.0.0-beta/AlltKit-1.0.0-beta.zip", checksum: "ecc2fcb2562b4605ab9610af29ce586ab82b392330585d5e5b87fc9ff14149a8")
    ]
)

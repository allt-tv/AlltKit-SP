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
        .binaryTarget(name: "AlltKit", url: "https://github.com/allt-tv/AlltKit-SP/releases/download/1.0/AlltKit-1.0.zip", checksum: "0f17bffd0065e146274f210f6c814f98d3f8da51b6c45a2282ec44c38fdf5104")
    ]
)

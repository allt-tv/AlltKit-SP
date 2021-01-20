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
            targets: ["AlltKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket", .exact("7.6.5")),
        .package(url: "https://github.com/tadija/AEXML.git", .exact("4.6.0")),
        .package(name: "Swifter", url: "https://github.com/httpswift/swifter.git", .exact("1.5.0"))
    ],
    targets: [
              .binaryTarget(name: "AlltKit",
                            url: "https://github.com/allt-tv/AlltKit-SP/releases/download/1.0.0/AlltKit-1.0.0.zip",
                            checksum: "211e08bca20505d456a3f0ec2d7132448373913ddd2e31dc82e6a69737db5d1c")
    ]
)

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
              .binaryTarget(name: "AlltKit", url: "https://github.com/allt-tv/AlltKit-SP/releases/download/1.0.0/AlltKit-1.0.0.zip", checksum: "6fef0641f4ce19034099a15ca4bb91f2c79080a309b6b7ec69b2212e858483f6")
    ]
)

// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIViewAnimation",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "UIViewAnimation",
            targets: [
                "UIViewAnimation"
            ]
        ),
    ],
    targets: [
        .target(
            name: "UIViewAnimation"
        ),
        .testTarget(
            name: "UIViewAnimationTests",
            dependencies: [
                "UIViewAnimation"
            ]
        ),
    ]
)

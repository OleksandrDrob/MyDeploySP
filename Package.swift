// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DaznSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DaznSDK",
            type: .dynamic,
            targets: ["DaznWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/coralogix/cx-ios-sdk", from: "1.0.12")
    ],
    targets: [
        .binaryTarget(
            name: "DaznSDKFramework",
            path: "Frameworks/DaznSDK.xcframework"
        ),
        .target(
            name: "DaznWrapper",
            dependencies: [
                .target(name: "DaznSDKFramework"),
                .product(name: "Coralogix", package: "cx-ios-sdk")
            ],
            path: "Sources/MyFramework",
            exclude: [], // Exclude unnecessary files if required
            resources: [] // Add resources if your wrapper needs them
        )
    ]
)

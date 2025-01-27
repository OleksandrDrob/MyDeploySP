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
            type: .static,
            targets: ["DaznSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/coralogix/cx-ios-sdk", from: "1.0.12")
    ],
    targets: [
        .binaryTarget(
            name: "DaznSDK",
            path: "Frameworks/DaznSDK.xcframework"
        ),
        .target(
            name: "DaznSDK",
            dependencies: [
                .product(name: "Coralogix", package: "cx-ios-sdk"),
                .target(name: "DaznSDK")
            ]
        )
    ]
)

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
            targets: ["DaznSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/coralogix/cx-ios-sdk", from: "1.0.12")
    ],
    targets: [
        .binaryTarget(
            name: "DaznSDK",
            url: "https://github.com/getndazn/ios-dazn-sdk/releases/download/0.0.16/DaznSDK.xcframework.zip",
            checksum: "0e1cc5dbb36270c17b5f81baf2f407f3a229050fedbdb4950b887e749be8448d"
        )
    ]
)

// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyFramework",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyFramework",
            targets: ["MyFramework"]),
    ],
    targets: [
        .binaryTarget(
              name: "MyFramework",
              url: "https://github.com/OleksandrDrob/MyFramework/releases/download/main/MyXC.xcframework.zip", // Replace with your file URL
              checksum: "4c6f7ea53040df742b37ae43ad1d8dbfe38a4f1a47147bdceda8564e77c47ff4" // This is optional for verification
          )

    ]
)

// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CloudBooth",
    platforms: [.macOS(.v13)],
    products: [
        .executable(name: "CloudBooth", targets: ["CloudBooth"])
    ],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "CloudBooth",
            dependencies: [],
            path: "Sources/CloudBooth",
            resources: [
                .process("Assets.xcassets")
            ]
        )
    ]
)
// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftEvalExample",
    platforms: [.macOS(.v10_13)],
    dependencies: [
        .package(path: "CorePackage")
    ],
    targets: [
        .target(
            name: "SwiftEvalExample",
            dependencies: [.product(name: "SwiftEvalExampleApp")])
    ]
)

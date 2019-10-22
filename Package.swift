// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftEvalExample",
    platforms: [.macOS(.v10_13)],
    products: [
        .library(name: "SwiftEvalExampleApp",
                 type: .dynamic,
                 targets: ["SwiftEvalExampleApp"]),
        .executable(name: "SwiftEvalExample",
                    targets: ["SwiftEvalExample"])
    ],
    dependencies: [
        .package(url: "https://github.com/omochi/SwiftEval",
                 .branch("dev"))
    ],
    targets: [
        .target(
            name: "SwiftEvalExampleApp",
            dependencies: ["SwiftEval"]),
        .target(
            name: "SwiftEvalExample",
            dependencies: [.product(name: "SwiftEvalExampleApp")]),
        .testTarget(
            name: "SwiftEvalExampleTests",
            dependencies: ["SwiftEvalExample"]),
    ]
)

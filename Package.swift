// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftEvalExample",
    platforms: [.macOS(.v10_13)],
    dependencies: [
        .package(url: "https://github.com/omochi/SwiftEval", .branch("master"))
    ],
    targets: [
        .target(
            name: "SwiftEvalExample",
            dependencies: ["SwiftEval"]),
        .testTarget(
            name: "SwiftEvalExampleTests",
            dependencies: ["SwiftEvalExample"]),
    ]
)

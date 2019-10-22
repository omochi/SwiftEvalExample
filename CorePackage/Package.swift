// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftEvalExampleCore",
    platforms: [.macOS(.v10_13)],
    products: [
        .library(name: "SwiftEvalExampleApp",
                 type: .dynamic,
                 targets: ["SwiftEvalExampleApp"])
    ],
    dependencies: [
        .package(url: "https://github.com/omochi/SwiftEval",
                 .branch("master"))
    ],
    targets: [
        .target(
            name: "SwiftEvalExampleApp",
            dependencies: ["SwiftEval"])
    ]
)

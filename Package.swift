// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "ColorfulX",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .macCatalyst(.v14),
        .tvOS(.v13),
    ],
    products: [
        .library(name: "ColorfulX", targets: ["ColorfulX"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Lakr233/SpringInterpolation.git", from: "1.1.2"),
    ],
    targets: [
        .target(
            name: "ColorfulX",
            dependencies: ["SpringInterpolation"],
            resources: [
                .process("Shaders/MulticolorGradientShader.metal"),
            ]
        ),
    ]
)

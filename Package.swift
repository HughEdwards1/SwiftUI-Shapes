// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Shapes",
    platforms: [.iOS(.v13), .macOS(.v10_15), .watchOS(.v6), .tvOS(.v13)],
    products: [
        .library(
            name: "Shapes",
            targets: ["Shapes"]),
    ],
    dependencies: [
        .package(name: "CGExtender", url: "https://github.com/HughEdwards1/CGExtender", from: "1.1.2")
    ],
    targets: [
        .target(
            name: "Shapes",
            dependencies: ["CGExtender"]),
        .testTarget(
            name: "ShapesTests",
            dependencies: ["Shapes"]),
    ]
)

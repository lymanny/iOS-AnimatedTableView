// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnimatedTableView",
    platforms: [
        // Specify the minimum iOS version required
        .iOS(.v13)
    ],
    products: [
        // Define the library product
        .library(
            name: "AnimatedTableView",
            targets: ["AnimatedTableView"]
        ),
    ],
    targets: [
        // Define the main target
        .target(
            name: "AnimatedTableView",
            dependencies: []
        ),
        // Define the test target
        .testTarget(
            name: "AnimatedTableViewTests",
            dependencies: ["AnimatedTableView"]
        ),
    ]
)

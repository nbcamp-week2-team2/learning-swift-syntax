// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "LearningSwiftSyntax",
    dependencies: [],
    targets: [
        .executableTarget(
            name: "ChallengeTask",
            dependencies: []
        ),
        .testTarget(
            name: "ChallengeTaskTests",
            dependencies: ["ChallengeTask"]
        ),
        .executableTarget(
            name: "EssentialTasks",
            dependencies: []
        ),
        .testTarget(
            name: "EssentialTasksTests",
            dependencies: ["EssentialTasks"]
        ),
    ]
)

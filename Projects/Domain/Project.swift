import ProjectDescription

let project = Project(
    name: "Domain",
    targets: [
        .target(
            name: "Domain",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "io.tuist.Domain",
            infoPlist: .extendingDefault(
                with: [:]
            ),
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "CoreKit", path: .relativeToRoot("Projects/CoreKit"))
            ]
        )
    ]
)

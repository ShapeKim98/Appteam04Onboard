import ProjectDescription

let project = Project(
    name: "Feature",
    targets: [
        .target(
            name: "Feature",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Feature",
            infoPlist: .extendingDefault(
                with: [:]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Domain", path: .relativeToRoot("Projects/Domain")),
                .project(target: "DSKit", path: .relativeToRoot("Projects/DSKit"))
            ]
        )
    ]
)

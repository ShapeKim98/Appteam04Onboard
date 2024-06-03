import ProjectDescription

let project = Project(
    name: "DSKit",
    targets: [
        .target(
            name: "DSKit",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "io.tuist.DSKit",
            infoPlist: .extendingDefault(
                with: [:]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Util", path: .relativeToRoot("Projects/Util"))
            ]
        )
    ]
)

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Feature",
    targets: [
        .target(
            name: "Feature",
            destinations: .appDestinations,
            product: .framework,
            bundleId: .moduleBundleId(name: "Feature"),
            deploymentTargets: .appMinimunTarget,
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

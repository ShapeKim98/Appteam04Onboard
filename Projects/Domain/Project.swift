import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Domain",
    targets: [
        .target(
            name: "Domain",
            destinations: .appDestinations,
            product: .staticLibrary,
            bundleId: .moduleBundleId(name: "Domain"),
            deploymentTargets: .appMinimunTarget,
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

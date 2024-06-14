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
            infoPlist: .file(path: .relativeToRoot("Projects/App/Resources/Appteam04OnBoard-info.plist")),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Domain", path: .relativeToRoot("Projects/Domain")),
                .project(target: "DSKit", path: .relativeToRoot("Projects/DSKit"))
            ]
        )
    ]
)

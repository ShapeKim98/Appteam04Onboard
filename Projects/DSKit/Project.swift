import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "DSKit",
    targets: [
        .target(
            name: "DSKit",
            destinations: .appDestinations,
            product: .staticFramework,
            bundleId: .moduleBundleId(name: "DSKit"),
            deploymentTargets: .appMinimunTarget,
            infoPlist: .file(path: .relativeToRoot("Projects/App/Resources/Appteam04OnBoard-info.plist")),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Util", path: .relativeToRoot("Projects/Util"))
            ]
        )
    ]
)

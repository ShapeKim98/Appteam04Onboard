import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Appteam04OnBoardApp",
    targets: [
        .target(
            name: "Appteam04OnBoardApp",
            destinations: .appDestinations,
            product: .app,
            bundleId: .appBundleId,
            deploymentTargets: .appMinimunTarget,
            infoPlist: .file(path: .relativeToRoot("Projects/App/Resources/Appteam04OnBoard-info.plist")),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Feature", path: .relativeToRoot("Projects/Feature"))
            ]
        )
    ]
)

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
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Feature", path: .relativeToRoot("Projects/Feature"))
            ]
        )
    ]
)

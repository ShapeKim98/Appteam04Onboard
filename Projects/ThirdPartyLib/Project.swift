import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "ThirdPartyLib",
    targets: [
        .target(
            name: "ThirdPartyLib",
            destinations: .appDestinations,
            product: .staticLibrary,
            bundleId: .moduleBundleId(name: "ThirdPartyLib"),
            deploymentTargets: .appMinimunTarget,
            infoPlist: .file(path: .relativeToRoot("Projects/App/Resources/Appteam04OnBoard-info.plist")),
            sources: ["Sources/**"],
            dependencies: [
                .external(name: "ComposableArchitecture")
            ]
        )
    ]
)

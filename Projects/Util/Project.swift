import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Util",
    targets: [
        .target(
            name: "Util",
            destinations: .appDestinations,
            product: .staticLibrary,
            bundleId: .moduleBundleId(name: "Util"),
            deploymentTargets: .appMinimunTarget,
            infoPlist: .file(path: .relativeToRoot("Projects/App/Resources/Appteam04OnBoard-info.plist")),
            sources: ["Sources/**"],
            dependencies: []
        )
    ]
)

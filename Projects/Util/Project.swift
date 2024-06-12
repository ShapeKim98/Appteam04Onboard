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
            sources: ["Sources/**"],
            dependencies: []
        )
    ]
)

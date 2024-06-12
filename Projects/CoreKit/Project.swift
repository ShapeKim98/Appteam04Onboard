import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "CoreKit",
    targets: [
        .target(
            name: "CoreKit",
            destinations: .appDestinations,
            product: .staticLibrary,
            bundleId: .moduleBundleId(name: "CoreKit"),
            deploymentTargets: .appMinimunTarget,
            infoPlist: .extendingDefault(
                with: [:]
            ),
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "ThirdPartyLib", path: .relativeToRoot("Projects/ThirdPartyLib")),
                .project(target: "Util", path: .relativeToRoot("Projects/Util"))
            ]
        )
    ]
)

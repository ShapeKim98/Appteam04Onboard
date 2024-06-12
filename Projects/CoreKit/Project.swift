import ProjectDescription
import ProjectDescriptionHelpers

let networkTarget = Target.target(
    name: "CoreNetwork",
    destinations: .appDestinations,
    product: .staticLibrary,
    bundleId: "\(String.moduleBundleId(name: "CoreKit")).CoreNetwork",
    deploymentTargets: .appMinimunTarget,
    sources: ["Sources/Network/**"],
    dependencies: [
        .project(target: "ThirdPartyLib", path: .relativeToRoot("Projects/ThirdPartyLib")),
        .project(target: "Util", path: .relativeToRoot("Projects/Util"))
    ])

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
                .target(networkTarget)
            ]
        ),
        networkTarget
    ]
)

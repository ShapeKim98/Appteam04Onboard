import ProjectDescription

let project = Project(
    name: "CoreKit",
    targets: [
        .target(
            name: "CoreKit",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "io.tuist.CoreKit",
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

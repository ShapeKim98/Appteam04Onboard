import ProjectDescription

let project = Project(
    name: "ThirdPartyLib",
    targets: [
        .target(
            name: "ThirdPartyLib",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "io.tuist.ThirdPartyLib",
            infoPlist: .extendingDefault(
                with: [:]
            ),
            sources: ["Sources/**"],
            dependencies: [
                .external(name: "ComposableArchitecture")
            ]
        )
    ]
)

import ProjectDescription

let project = Project(
    name: "ThirdPartyLib",
    packages: [
        .remote(url: "https://github.com/pointfreeco/swift-composable-architecture", requirement: .upToNextMajor(from: "1.10.4"))
    ],
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
                .package(product: "ComposableArchitecture", type: .macro)
            ]
        )
    ]
)

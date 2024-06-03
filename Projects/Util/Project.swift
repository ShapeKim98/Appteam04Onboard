import ProjectDescription

let project = Project(
    name: "Util",
    targets: [
        .target(
            name: "Util",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "io.tuist.Util",
            infoPlist: .extendingDefault(
                with: [:]
            ),
            sources: ["Sources/**"],
            dependencies: []
        )
    ]
)

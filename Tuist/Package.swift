// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        // productTypes: ["Alamofire": .framework,] 
//        productTypes: ["ComposableArchitecture": .macro]
    )
#endif

let package = Package(
    name: "Appteam04Onboard",
    platforms: [.iOS(.v16)],
    dependencies: [
//        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.10.4")
    ]
)

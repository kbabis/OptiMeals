import Bootstrap
import ProjectDescription

struct OptiMealsApp: TargetConvertible {
    let path: String
    
    var properties: [String : InfoPlist.Value] {
        InfoPlistPropertiesBuilder()
            .set(bundleName: "$(APP_NAME)")
            .set(bundleDisplayName: "$(APP_NAME)")
            .set(doesUseNonExemptEncryption: false)
            .set(supportedInterfaceOrientations: [.portrait])
            .set(launchStoryboardName: "LaunchScreen")
            .build()
    }
    
    var target: Target {
        AppBuilder {
            $0.sources = [
                "\(path)/Sources/**",
            ]
            $0.resources = ["\(path)/Resources/**/*"]
            $0.dependencies = [
                Feature.splash.dependency,
                ThirdParty.composableArchitecture.dependency
            ]
            $0.settings = .settings(configurations: Configurations.allCases.map(\.configuration))
            $0.infoPlist = .extendingDefault(with: properties)
        }
            .build(name: "OptiMeals",
                   bundleID: Global.bundleID,
                   deploymentTarget: Global.deploymentTarget)
    }
}

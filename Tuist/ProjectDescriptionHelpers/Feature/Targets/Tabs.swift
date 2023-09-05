import Bootstrap
import ProjectDescription

struct Tabs: TargetConvertible {
    let path: String
    
    var target: ProjectDescription.Target {
        FrameworkBuilder {
            $0.dependencies = [
                Feature.home.dependency,
                Feature.favorites.dependency,
                Feature.settings.dependency,
                Core.optiMealsKit.dependency,
                Core.optiMealsUI.dependency,
                ThirdParty.composableArchitecture.dependency
            ]
        }
        .build(name: "Tabs",
               bundleID: Global.bundleID + ".tabs",
               sources: ["\(path)/Sources/**"],
               deploymentTarget: Global.deploymentTarget)
    }
}


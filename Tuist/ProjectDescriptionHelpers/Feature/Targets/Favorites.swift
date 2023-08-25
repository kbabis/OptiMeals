import Bootstrap
import ProjectDescription

struct Favorites: TargetConvertible {
    let path: String
    
    var target: ProjectDescription.Target {
        FrameworkBuilder {
            $0.dependencies = [
                Core.optiMealsKit.dependency,
                Core.optiMealsUI.dependency,
                ThirdParty.composableArchitecture.dependency
            ]
        }
        .build(name: "Favorites",
               bundleID: Global.bundleID + ".favorites",
               sources: ["\(path)/Sources/**"],
               deploymentTarget: Global.deploymentTarget)
    }
}


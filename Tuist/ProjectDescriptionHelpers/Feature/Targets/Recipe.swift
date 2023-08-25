import Bootstrap
import ProjectDescription

struct Recipe: TargetConvertible {
    let path: String
    
    var target: ProjectDescription.Target {
        FrameworkBuilder {
            $0.dependencies = [
                Core.optiMealsKit.dependency,
                Core.optiMealsUI.dependency,
                ThirdParty.composableArchitecture.dependency
            ]
        }
        .build(name: "Recipe",
               bundleID: Global.bundleID + ".recipe",
               sources: ["\(path)/Sources/**"],
               deploymentTarget: Global.deploymentTarget)
    }
}


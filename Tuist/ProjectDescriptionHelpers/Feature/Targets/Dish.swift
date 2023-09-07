import Bootstrap
import ProjectDescription

struct Dish: TargetConvertible {
    let path: String
    
    var target: ProjectDescription.Target {
        FrameworkBuilder {
            $0.dependencies = [
                Feature.recipe.dependency,
                Core.optiMealsKit.dependency,
                Core.optiMealsUI.dependency,
                ThirdParty.composableArchitecture.dependency
            ]
        }
        .build(name: "Dish",
               bundleID: Global.bundleID + ".dish",
               sources: ["\(path)/Sources/**"],
               deploymentTarget: Global.deploymentTarget)
    }
}
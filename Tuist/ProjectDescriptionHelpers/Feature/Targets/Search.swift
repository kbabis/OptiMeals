import Bootstrap
import ProjectDescription

struct Search: TargetConvertible {
    let path: String
    
    var target: ProjectDescription.Target {
        FrameworkBuilder {
            $0.dependencies = [
                Core.optiMealsKit.dependency,
                Core.optiMealsUI.dependency,
                ThirdParty.composableArchitecture.dependency
            ]
        }
        .build(name: "Search",
               bundleID: Global.bundleID + ".search",
               sources: ["\(path)/Sources/**"],
               deploymentTarget: Global.deploymentTarget)
    }
}


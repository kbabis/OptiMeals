import Bootstrap
import ProjectDescription

struct OptiMealsUI: TargetConvertible {
    let path: String
    
    var target: ProjectDescription.Target {
        FrameworkBuilder {
            $0.dependencies = [
                ThirdParty.composableArchitecture.dependency
            ]
            $0.resources = ["\(path)/Resources/**/*"]
        }
        .build(name: "OptiMealsUI",
               bundleID: Global.bundleID + ".OptiMealsUI",
               sources: ["\(path)/Sources/**"],
               deploymentTarget: Global.deploymentTarget)
    }
}

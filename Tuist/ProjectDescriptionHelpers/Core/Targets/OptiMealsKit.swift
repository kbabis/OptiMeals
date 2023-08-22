import Bootstrap
import ProjectDescription

struct OptiMealsKit: TargetConvertible {
    let path: String
    
    var target: ProjectDescription.Target {
        FrameworkBuilder {
            $0.dependencies = [
                ThirdParty.composableArchitecture.dependency
            ]
        }
        .build(name: "OptiMealsKit",
               bundleID: Global.bundleID + ".optiMealsKit",
               sources: ["\(path)/Sources/**"],
               deploymentTarget: Global.deploymentTarget)
    }
}

import Bootstrap
import ProjectDescription

struct UITests: TargetConvertible {
    let path: String
    
    var target: Target {
        .uiTests(
            of: App.optiMealsApp.target,
            sources: ["\(path)/UITests/**"])
    }
}

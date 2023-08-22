import Bootstrap
import ProjectDescription

public enum App: CaseIterable {
    case optiMealsApp
    case uiTests
    
    static let path = Global.mainFolderPath + "/App"
}

extension App: TargetConvertible {
    public var target: Target {
        switch self {
        case .optiMealsApp:
            return OptiMealsApp(path: App.path).target
        case .uiTests:
            return UITests(path: App.path).target
        }
    }
}

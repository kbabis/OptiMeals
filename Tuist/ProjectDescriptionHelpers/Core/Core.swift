import Bootstrap
import ProjectDescription

public enum Core: CaseIterable {
    case optiMealsKit
    case optiMealsUI
    
    static let path = Global.mainFolderPath + "/Core"
}

extension Core: TargetConvertible {
    public var target: Target {
        switch self {
        case .optiMealsKit:
            return OptiMealsKit(path: Core.path + "/OptiMealsKit").target
        case .optiMealsUI:
            return OptiMealsUI(path: Core.path + "/OptiMealsUI").target
        }
    }
}

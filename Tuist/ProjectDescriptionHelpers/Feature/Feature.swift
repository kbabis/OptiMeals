import Bootstrap
import ProjectDescription

public enum Feature: CaseIterable {
    case splash
    case onboarding
    case configure
    case tabs
    case home
    case favorites
    case settings
    case search
    case dish
    case searchFilters
    case recipe
    
    static let path = Global.mainFolderPath + "/Feature"
}

extension Feature: TargetConvertible {
    public var target: Target {
        switch self {
        case .splash:
            return Splash(path: Feature.path + "/Splash").target
       case .onboarding:
           return Onboarding(path: Feature.path + "/Onboarding").target
       case .configure:
           return Configure(path: Feature.path + "/Configure").target
       case .tabs:
           return Tabs(path: Feature.path + "/Tabs").target
       case .home:
           return Home(path: Feature.path + "/Home").target
       case .favorites:
           return Favorites(path: Feature.path + "/Favorites").target
       case .settings:
           return Settings(path: Feature.path + "/Settings").target
       case .search:
           return Search(path: Feature.path + "/Search").target
       case .dish:
           return Dish(path: Feature.path + "/Dish").target
       case .searchFilters:
           return SearchFilters(path: Feature.path + "/SearchFilters").target
       case .recipe:
           return Recipe(path: Feature.path + "/Recipe").target
        }
    }
}

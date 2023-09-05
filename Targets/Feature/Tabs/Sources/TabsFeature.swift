import ComposableArchitecture
import Home
import Favorites
import Settings

public struct TabsFeature: Reducer {
    public init() {}
    
    public struct State: Equatable {
        public init() {}
        
        var home = HomeFeature.State()
        var favorites = FavoritesFeature.State()
        var settings = SettingsFeature.State()
    }
    
    public enum Action {
        case home(HomeFeature.Action)
        case favorites(FavoritesFeature.Action)
        case settings(SettingsFeature.Action)
    }
    
    public var body: some ReducerOf<Self> {
        EmptyReducer()
        
        Scope(state: \.home, action: /Action.home) {
            HomeFeature()
        }
        
        Scope(state: \.favorites, action: /Action.favorites) {
            FavoritesFeature()
        }
        
        Scope(state: \.settings, action: /Action.settings) {
            SettingsFeature()
        }
    }
}

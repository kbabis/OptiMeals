import ComposableArchitecture

public struct FavoritesFeature: Reducer {
    public init() {}
    
    public struct State: Equatable {
        public init() {}
    }
    
    public enum Action {}
    
    public var body: some ReducerOf<Self> {
        EmptyReducer()
    }
}

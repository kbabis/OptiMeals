import ComposableArchitecture

public struct DishFeature: Reducer {
    public init() {}

    public struct State: Equatable {
        public init() {}
    }
    
    public enum Action {}
    
    public var body: some ReducerOf<Self> {
        EmptyReducer()
    }
}

import ComposableArchitecture

struct SearchFeature: Reducer {
    struct State: Equatable {}
    
    enum Action {}
    
    var body: some ReducerOf<Self> {
        EmptyReducer()
    }
}
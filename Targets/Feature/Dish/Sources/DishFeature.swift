import ComposableArchitecture

struct DishFeature: Reducer {
    struct State: Equatable {}
    
    enum Action {}
    
    var body: some ReducerOf<Self> {
        EmptyReducer()
    }
}
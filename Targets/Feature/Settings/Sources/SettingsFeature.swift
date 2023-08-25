import ComposableArchitecture

struct SettingsFeature: Reducer {
    struct State: Equatable {}
    
    enum Action {}
    
    var body: some ReducerOf<Self> {
        EmptyReducer()
    }
}
import ComposableArchitecture
import Splash

struct AppFeature: Reducer {
    struct State: Equatable {}
    
    enum Action {}
    
    var body: some ReducerOf<Self> {
        EmptyReducer()
    }
}

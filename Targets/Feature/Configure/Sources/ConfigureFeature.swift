import ComposableArchitecture
import Tabs

public struct ConfigureFeature: Reducer {
    public init() {}
    
    public struct State: Equatable {
        public init() {}
        
        @PresentationState var tabs: TabsFeature.State?
    }
    
    public enum Action {
        case goToTabsTapped
        case tabs(PresentationAction<TabsFeature.Action>)
    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                case .goToTabsTapped:
                    state.tabs = .init()
                    return .none
                case .tabs:
                    return .none
            }
        }
        .ifLet(\.$tabs, action: /Action.tabs) {
            TabsFeature()
        }
    }
}

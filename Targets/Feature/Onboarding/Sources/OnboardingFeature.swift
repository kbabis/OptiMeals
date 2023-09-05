import ComposableArchitecture
import Configure

public struct OnboardingFeature: Reducer {
    public init() {}
    
    public struct State: Equatable {
        public init() {}
        
        @PresentationState var configure: ConfigureFeature.State?
    }
    
    public enum Action {
        case goToConfigureTapped
        case configure(PresentationAction<ConfigureFeature.Action>)
    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .goToConfigureTapped:
                state.configure = .init()
                return .none
            case .configure:
                return .none
            }
        }
        .ifLet(\.$configure, action: /Action.configure) {
            ConfigureFeature()
        }
    }
}

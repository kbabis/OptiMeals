import ComposableArchitecture
import Onboarding
import Tabs

public struct SplashFeature: Reducer {
    public init() {}
    
    public struct State: Equatable {
        public init() {}
    
        @PresentationState var destination: Destination.State?
    }
    
    public enum Action {
        case goToOnboardingTapped
        case goToTabsTapped
        case destination(PresentationAction<Destination.Action>)
    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .goToOnboardingTapped:
                state.destination = .onboarding(.init())
                return .none
            case .goToTabsTapped:
                state.destination = .tabs(.init())
                return .none
            case .destination:
                return .none
            }
        }
        .ifLet(\.$destination, action: /Action.destination) {
            Destination()
        }
        ._printChanges()
    }
}

extension SplashFeature {
    public struct Destination: Reducer {
        public enum State: Equatable {
            case onboarding(OnboardingFeature.State)
            case tabs(TabsFeature.State)
        }
        
        public enum Action {
            case onboarding(OnboardingFeature.Action)
            case tabs(TabsFeature.Action)
        }
        
        public var body: some ReducerOf<Self> {
            Scope(state: /State.onboarding, action: /Action.onboarding) {
                OnboardingFeature()
            }
            Scope(state: /State.tabs, action: /Action.tabs) {
                TabsFeature()
            }
        }
    }
}

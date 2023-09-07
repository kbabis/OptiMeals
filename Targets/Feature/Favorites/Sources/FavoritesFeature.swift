import ComposableArchitecture
import Dish

public struct FavoritesFeature: Reducer {
    public init() {}
    
    public struct State: Equatable {
        public init() {}
        
        @PresentationState var dish: DishFeature.State?
    }
    
    public enum Action {
        case dishDetailsButtonTapped
        
        case dish(PresentationAction<DishFeature.Action>)
    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .dishDetailsButtonTapped:
                state.dish = .init()
                return .none
            case .dish:
                return .none
            }
        }
        .ifLet(\.$dish, action: /Action.dish) {
            DishFeature()
        }
    }
}

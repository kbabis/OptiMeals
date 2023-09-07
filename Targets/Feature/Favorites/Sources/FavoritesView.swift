import ComposableArchitecture
import SwiftUI
import Dish

public struct FavoritesView: View {
    let store: StoreOf<FavoritesFeature>
    @ObservedObject var viewStore: ViewStoreOf<FavoritesFeature>

    public init(store: StoreOf<FavoritesFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }

    public var body: some View {
        VStack {
            Text("Favorites!")
            
            Button(
                "Dish details",
                action: { viewStore.send(.dishDetailsButtonTapped) }
            )
        }
        .navigationDestination(
            store: store.scope(state: \.$dish, action: { .dish($0) })) { store in
                DishView(store: store)
            }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            FavoritesView(store: .init(initialState: .init(), reducer: FavoritesFeature.init))
        }
    }
}

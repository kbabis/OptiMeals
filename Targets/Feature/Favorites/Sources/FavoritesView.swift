import ComposableArchitecture
import SwiftUI

public struct FavoritesView: View {
    let store: StoreOf<FavoritesFeature>
    @ObservedObject var viewStore: ViewStoreOf<FavoritesFeature>

    public init(store: StoreOf<FavoritesFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }

    public var body: some View {
        Text("Favorites!")
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView(store: .init(initialState: .init(), reducer: FavoritesFeature.init))
    }
}

import ComposableArchitecture
import SwiftUI

struct FavoritesView: View {
    let store: StoreOf<FavoritesFeature>
    @ObservedObject var viewStore: ViewStoreOf<FavoritesFeature>

    init(store: StoreOf<FavoritesFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }

    var body: some View {
        Text("Happy coding!")
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView(store: .init(initialState: .init(), reducer: FavoritesFeature.init))
    }
}

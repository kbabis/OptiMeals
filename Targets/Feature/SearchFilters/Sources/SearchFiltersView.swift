import ComposableArchitecture
import SwiftUI

struct SearchFiltersView: View {
    let store: StoreOf<SearchFiltersFeature>
    @ObservedObject var viewStore: ViewStoreOf<SearchFiltersFeature>

    init(store: StoreOf<SearchFiltersFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }

    var body: some View {
        Text("Happy coding!")
    }
}

struct SearchFiltersView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFiltersView(store: .init(initialState: .init(), reducer: SearchFiltersFeature.init))
    }
}

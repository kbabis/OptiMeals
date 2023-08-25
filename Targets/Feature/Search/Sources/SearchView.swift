import ComposableArchitecture
import SwiftUI

struct SearchView: View {
    let store: StoreOf<SearchFeature>
    @ObservedObject var viewStore: ViewStoreOf<SearchFeature>

    init(store: StoreOf<SearchFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }

    var body: some View {
        Text("Happy coding!")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(store: .init(initialState: .init(), reducer: SearchFeature.init))
    }
}

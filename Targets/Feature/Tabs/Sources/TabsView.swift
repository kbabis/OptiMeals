import ComposableArchitecture
import SwiftUI

struct TabsView: View {
    let store: StoreOf<TabsFeature>
    @ObservedObject var viewStore: ViewStoreOf<TabsFeature>

    init(store: StoreOf<TabsFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }

    var body: some View {
        Text("Happy coding!")
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView(store: .init(initialState: .init(), reducer: TabsFeature.init))
    }
}

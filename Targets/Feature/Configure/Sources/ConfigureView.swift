import ComposableArchitecture
import SwiftUI
import Tabs

public struct ConfigureView: View {
    let store: StoreOf<ConfigureFeature>
    @ObservedObject var viewStore: ViewStoreOf<ConfigureFeature>

    public init(store: StoreOf<ConfigureFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }

    public var body: some View {
        VStack {
            Button("go to tabs", action: { viewStore.send(.goToTabsTapped) })
        }
        .navigationDestination(store: store.scope(state: \.$tabs, action: { .tabs($0) })) { store in
            TabsView(store: store)
        }
    }
}

struct ConfigureView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ConfigureView(store: .init(initialState: .init(), reducer: ConfigureFeature.init))
        }
    }
}

import ComposableArchitecture
import SwiftUI

struct ConfigureView: View {
    let store: StoreOf<ConfigureFeature>
    @ObservedObject var viewStore: ViewStoreOf<ConfigureFeature>

    init(store: StoreOf<ConfigureFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }

    var body: some View {
        Text("Happy coding!")
    }
}

struct ConfigureView_Previews: PreviewProvider {
    static var previews: some View {
        ConfigureView(store: .init(initialState: .init(), reducer: ConfigureFeature.init))
    }
}

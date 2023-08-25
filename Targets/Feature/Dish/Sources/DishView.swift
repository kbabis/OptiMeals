import ComposableArchitecture
import SwiftUI

struct DishView: View {
    let store: StoreOf<DishFeature>
    @ObservedObject var viewStore: ViewStoreOf<DishFeature>

    init(store: StoreOf<DishFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }

    var body: some View {
        Text("Happy coding!")
    }
}

struct DishView_Previews: PreviewProvider {
    static var previews: some View {
        DishView(store: .init(initialState: .init(), reducer: DishFeature.init))
    }
}

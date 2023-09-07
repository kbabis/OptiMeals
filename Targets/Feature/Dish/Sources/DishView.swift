import ComposableArchitecture
import SwiftUI

public struct DishView: View {
    let store: StoreOf<DishFeature>
    @ObservedObject var viewStore: ViewStoreOf<DishFeature>

    public init(store: StoreOf<DishFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }

    public var body: some View {
        Text("Happy coding!")
    }
}

struct DishView_Previews: PreviewProvider {
    static var previews: some View {
        DishView(store: .init(initialState: .init(), reducer: DishFeature.init))
    }
}

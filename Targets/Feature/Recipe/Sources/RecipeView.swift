import ComposableArchitecture
import SwiftUI

struct RecipeView: View {
    let store: StoreOf<RecipeFeature>
    @ObservedObject var viewStore: ViewStoreOf<RecipeFeature>

    init(store: StoreOf<RecipeFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }

    var body: some View {
        Text("Happy coding!")
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(store: .init(initialState: .init(), reducer: RecipeFeature.init))
    }
}

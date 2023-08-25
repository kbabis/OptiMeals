import ComposableArchitecture
import SwiftUI

struct OnboardingView: View {
    let store: StoreOf<OnboardingFeature>
    @ObservedObject var viewStore: ViewStoreOf<OnboardingFeature>

    init(store: StoreOf<OnboardingFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }

    var body: some View {
        Text("Happy coding!")
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(store: .init(initialState: .init(), reducer: OnboardingFeature.init))
    }
}

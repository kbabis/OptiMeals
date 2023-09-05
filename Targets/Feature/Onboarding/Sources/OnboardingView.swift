import ComposableArchitecture
import Configure
import SwiftUI

public struct OnboardingView: View {
    let store: StoreOf<OnboardingFeature>
    @ObservedObject var viewStore: ViewStoreOf<OnboardingFeature>

    public init(store: StoreOf<OnboardingFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }

    public var body: some View {
        VStack {
            Button("go to configure", action: { viewStore.send(.goToConfigureTapped) })
        }
        .navigationDestination(
            store: store.scope(state: \.$configure, action: { .configure($0) })) { store in
                ConfigureView(store: store)
            }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            OnboardingView(store: .init(initialState: .init(), reducer: OnboardingFeature.init))
        }
    }
}

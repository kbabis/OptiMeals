import SwiftUI
import ComposableArchitecture
import Onboarding
import Tabs

public struct SplashView: View {
    let store: StoreOf<SplashFeature>
    @ObservedObject var viewStore: ViewStoreOf<SplashFeature>
    
    public init(store: StoreOf<SplashFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }
    
    public var body: some View {
        VStack {
            Button("go to onboarding", action: { viewStore.send(.goToOnboardingTapped) })
            Button("go to tabs", action: { viewStore.send(.goToTabsTapped) })
        }
        .navigationDestination(
            store: store.scope(state: \.$destination, action: { .destination($0) }),
            state: /SplashFeature.Destination.State.onboarding,
            action: SplashFeature.Destination.Action.onboarding) { store in
                OnboardingView(store: store)
            }
        .navigationDestination(
            store: store.scope(state: \.$destination, action: { .destination($0) }),
            state: /SplashFeature.Destination.State.tabs,
            action: SplashFeature.Destination.Action.tabs) { store in
                TabsView(store: store)
            }
            
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SplashView(store: .init(initialState: .init(), reducer: SplashFeature.init))
        }
    }
}

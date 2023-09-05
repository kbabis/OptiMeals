import ComposableArchitecture
import SwiftUI
import Home
import Favorites
import Settings

public struct TabsView: View {
    let store: StoreOf<TabsFeature>
    @ObservedObject var viewStore: ViewStoreOf<TabsFeature>

    public init(store: StoreOf<TabsFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }
    
    public var body: some View {
        TabView {
            HomeView(store: store.scope(state: \.home, action: { .home($0) }))
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            FavoritesView(store: store.scope(state: \.favorites, action: { .favorites($0) }))
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
            
            SettingsView(store: store.scope(state: \.settings, action: { .settings($0) }))
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView(store: .init(initialState: .init(), reducer: TabsFeature.init))
    }
}

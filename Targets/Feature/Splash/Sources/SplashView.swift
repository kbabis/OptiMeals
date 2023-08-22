import SwiftUI
import ComposableArchitecture

public struct SplashView: View {
    let store: StoreOf<SplashFeature>
    @ObservedObject var viewStore: ViewStoreOf<SplashFeature>
    
    public init(store: StoreOf<SplashFeature>) {
        self.store = store
        self.viewStore = ViewStore(store, observe: { $0 })
    }
    
    public var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

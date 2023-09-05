import ComposableArchitecture
import SwiftUI
import Splash
 
@main
struct OptiMealsApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    let store: StoreOf<SplashFeature> = .init(initialState: SplashFeature.State(), reducer: SplashFeature.init)

    /// Please refer to
    ///  https://pointfreeco.github.io/swift-composable-architecture/main/documentation/composablearchitecture/testing
    ///  `Testing Gotchas section`
    var body: some Scene {
        WindowGroup {
            if !_XCTIsTesting {
                NavigationStack {
                    SplashView(store: store)
                }
            }
        }
    }
}

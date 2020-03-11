import Combine

class ConfigViewModel: ObservableObject {
    @Published var shouldContinueFromStop = UserDefaultsUtils.shouldContinueFromStop {
        willSet {
            UserDefaultsUtils.set(shouldContinueFromStop: newValue)
        }
    }
}

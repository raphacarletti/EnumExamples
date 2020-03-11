import Foundation

class UserDefaultsUtils {
    static var shouldContinueFromStop: Bool {
        return UserDefaults.standard.value(forKey: "shouldContinueFromStop") as? Bool ?? false
    }

    static func set(shouldContinueFromStop newValue: Bool) {
        UserDefaults.standard.set(newValue, forKey: "shouldContinueFromStop")
    }
}

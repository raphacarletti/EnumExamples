import Foundation

enum StartTimeOptions {
    case initial
    case continueFrom(_ seconds: Double)

    func startTime(shouldContinueFromStop: Bool) -> Double {
        switch self {
        case .initial:
            return 0
        case .continueFrom(let seconds):
            return shouldContinueFromStop ? seconds : 0
        }
    }
}

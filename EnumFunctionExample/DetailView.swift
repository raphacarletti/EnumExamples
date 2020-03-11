import SwiftUI

struct DetailView: View {
    let startTime: StartTimeOptions

    var body: some View {
        Text("Start time is \(startTime.startTime(shouldContinueFromStop: UserDefaultsUtils.shouldContinueFromStop))").padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(startTime: .initial)
    }
}

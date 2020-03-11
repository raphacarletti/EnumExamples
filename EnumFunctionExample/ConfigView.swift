import SwiftUI
import Combine

struct ConfigView: View {
    @ObservedObject var viewModel = ConfigViewModel()

    var body: some View {
        VStack {
            Toggle(isOn: self.$viewModel.shouldContinueFromStop) {
                Text("Should continue from stop")
            }.padding()
        }
    }
}

struct ConfigView_Previews: PreviewProvider {
    static var previews: some View {
        ConfigView()
    }
}

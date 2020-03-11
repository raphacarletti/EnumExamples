import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("List View")
                }.tag(0)
            ConfigView()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Config")
                }.tag(1)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

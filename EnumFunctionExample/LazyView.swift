import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    var body: Content {
        build()
    }

    init(_ build: @escaping () -> Content) {
        self.build = build
    }
}

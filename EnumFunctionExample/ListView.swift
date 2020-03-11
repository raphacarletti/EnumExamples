import SwiftUI

struct ListView: View {
    var listCellViewModels: [ListCellViewModel] {
        let cellTypes = MediaType.allCases
        return cellTypes.map(ListCellViewModel.init)
    }

    var body: some View {
        NavigationView {
            List(listCellViewModels) { viewModel in
                NavigationLink(destination: LazyView { DetailView(startTime: viewModel.cellType.startTime) }) {
                    ListCell(viewModel: viewModel)
                }
            }.navigationBarTitle(Text("ListView"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

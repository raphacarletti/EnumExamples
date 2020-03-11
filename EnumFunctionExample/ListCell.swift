import SwiftUI

enum MediaType: CaseIterable {
    case tvShows
    case movies

    var title: String {
        switch self {
        case .tvShows:
            return "TV Shows"
        case .movies:
            return "Movies"
        }
    }

    var description: String {
        switch self {
        case .tvShows:
            return "Always start from initial"
        case .movies:
            return "Always start with 10 seconds if should continue from stop"
        }
    }

    var startTime: StartTimeOptions {
        switch self {
        case .tvShows:
            return .initial
        case .movies:
            return .continueFrom(10.0)
        }
    }
}

struct ListCellViewModel: Identifiable {
    var id = UUID()
    let cellType: MediaType

    init(cellType: MediaType) {
        self.cellType = cellType
    }
}

struct ListCell: View {
    let viewModel: ListCellViewModel

    init(viewModel: ListCellViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(viewModel.cellType.title).bold()
                Text(viewModel.cellType.description).foregroundColor(.gray)
            }
            Spacer()
        }.padding()
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(viewModel: ListCellViewModel(cellType: .movies))
    }
}

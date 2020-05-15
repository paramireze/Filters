import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Filter]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { filter in
                        NavigationLink(
                            destination: FilterDetails(
                                filter: filter
                            )
                        ) {
                            CategoryItem(filter: filter)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryItem: View {
    var filter: Filter
    var body: some View {
        VStack(alignment: .leading) {
            filter.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(filter.short)
                .foregroundColor(.primary)
                .font(.caption)
                .lineLimit(5)
        }
        .padding(.leading, 15)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: filterData[0].category.rawValue,
            items: Array(filterData.prefix(3))
        )
        .environmentObject(UserData())
    }
}

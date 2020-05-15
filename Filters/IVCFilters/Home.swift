import SwiftUI

struct CategoryHome: View {
    var categories: [String: [Filter]] {
        Dictionary(
            grouping: filterData,
            by: { $0.category.rawValue }
        )
    }
    
    var featured: [Filter] {
        filterData.filter { $0.isFeatured }
    }
    
    @State var showingProfile = false
    
    
    var body: some View {
        NavigationView {
            List {
                FeaturedFilters(filters: featured)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: self.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                
            }
            .navigationBarTitle(Text("Featured"))

        }
    }
}

struct FeaturedFilters: View {
    var filters: [Filter]
    var body: some View {
        filters[0].image.resizable()
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(UserData())
    }
}

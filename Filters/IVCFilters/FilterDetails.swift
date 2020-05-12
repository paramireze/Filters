import SwiftUI


struct FilterDetails: View {
    @EnvironmentObject var userData: UserData
    var filter: Filter
    
    var filterIndex: Int {
        userData.filters.firstIndex(where: { $0.id == filter.id })!
    }
    
    var body: some View {
        VStack {
            IVCImage(image: filter.image)
            VStack (alignment: .leading) {
                HStack {
                    Text(filter.name)
                    .font(.title)
                    .foregroundColor(.blue)
                    
                    Button(action: {
                        self.userData.filters[self.filterIndex]
                            .isFavorite.toggle()
                    }) {
                        if self.userData.filters[self.filterIndex]
                            .isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct FilterDetails_Previews: PreviewProvider {
    static var previews: some View {
        FilterDetails(filter: filterData[0])
    }
}

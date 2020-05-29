import SwiftUI


struct FilterDetails: View {
    @EnvironmentObject var userData: UserData
    var filter: Filter
    
    var filterIndex: Int {
        userData.filters.firstIndex(where: { $0.id == filter.id })!
    }
    
    var body: some View {
        ScrollView {
        
            VStack {
                IVCImage(image: filter.image)
                    
                VStack (alignment: .leading, spacing: 10) {
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
                    Text("Safety Considerations")
                    .font(.title)

                    ForEach(filter.safetyConsiderations, id: \.self) { string in
                        Text(string)
                    }
                    
                    Text("Optimal Retrieval Window")
                    .font(.title)
                    ForEach(filter.optimalRetrievalWindow, id: \.self) { string in
                        Text(string)
                    }
                    Spacer()
                    
                    Text("Treatment Options")
                    .font(.title)
                    ForEach(filter.treatmentOptions, id: \.self) { string in
                        Text(string)
                    }
    
                    Text("Specifications")
                    .font(.title)
                    ForEach(filter.specifications, id: \.self) { string in
                        Text(string)
                    }

                }
                .padding()
                Spacer()
            }
        }
    }
}

struct FilterDetails_Previews: PreviewProvider {
    static var previews: some View {
        FilterDetails(filter: filterData[0])
    }
}

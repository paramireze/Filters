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
                    FilterDetailsSafetyConsiderations(filter: filter)
                    FilterDetailsOptimalRetrieval(filter: filter)
                    FilterDetailsTreatmentOptions(filter: filter)
                    FilterDetailsSpecifications(filter: filter)

                }
                .padding()
                Spacer()
            }
        }
    }
}


struct FilterDetailsSafetyConsiderations: View {
    var filter: Filter
    var body: some View {
        VStack(alignment: .leading) {
            Text("Safety Considerations")
            .font(.title)

            ForEach(filter.safetyConsiderations, id: \.self) { string in
                Text(string)
            }
            
            if (!filter.safetyConsiderationReferences.isEmpty) {
                NavigationLink(destination: ReferenceList(references: filter.safetyConsiderationReferences, barTitle: "Safety Consideration References")) {
                       Text("Reference(s)")
                }
            }
            
        }
    }
}


struct FilterDetailsOptimalRetrieval: View {
    var filter: Filter
    var body: some View {
        VStack(alignment: .leading) {
            Text("Optimal Retrieval Window")
              .font(.title)
              ForEach(filter.optimalRetrievalWindow, id: \.self) { string in
                  Text(string)
              }
              
            if (!filter.optimalRetrievalWindowReferences.isEmpty) {
                NavigationLink(destination: ReferenceList(references: filter.optimalRetrievalWindowReferences, barTitle: "Optimal Retrieval References")) {
                       Text("Reference(s)")
                }
            }
        }
    }
}

struct FilterDetailsTreatmentOptions: View {
    var filter: Filter
    var body: some View {
        VStack(alignment: .leading) {
            Text("Treatment Options")
            .font(.title)
            ForEach(filter.treatmentOptions, id: \.self) { string in
                Text(string)
            }
            if (!filter.treatmentOptionReferences.isEmpty) {
               NavigationLink(destination: ReferenceList(references: filter.treatmentOptionReferences, barTitle: "Treatment Option References")) {
                      Text("Reference(s)")
               }
           }
        }
    }
}

struct FilterDetailsSpecifications: View {
    var filter: Filter
    var body: some View {
        VStack(alignment: .leading) {
            Text("Specifications")
            .font(.title)
            ForEach(filter.specifications, id: \.self) { string in
                Text(string)
            }
//            if (!filter.specificationReferences.isEmpty) {
//                NavigationLink(destination: ReferenceList(references: filter.specificationReferences, barTitle: "Specifications References")) {
//                       Text("Reference(s)")
//                }
//            }
        }
    }
}

struct FilterDetails_Previews: PreviewProvider {
    static var previews: some View {
        FilterDetails(filter: filterData[0])
    }
}

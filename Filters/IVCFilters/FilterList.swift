import SwiftUI

struct FilterList: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Show Favorites Only")
                }
                
                ForEach(userData.filters) { filter in
                    if !self.userData.showFavoritesOnly || filter.isFavorite {
                        NavigationLink(
                            destination: FilterDetails(filter: filter)
                                .environmentObject(self.userData)
                        ) {
                            FilterRow(filter: filter)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("IVC Filters"))
        }
    }
}

struct FilterList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            FilterList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        .environmentObject(UserData())
    }
}

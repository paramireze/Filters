import SwiftUI

struct FilterList: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
        List(filterData) { filter in
            NavigationLink(destination:FilterDetails(filter: filter)) {
                FilterRow(filter: filter)
            }
        }
        .navigationBarTitle(Text("IVC Filters"))
            TabView {
               Text("The content of the first view")
                 .tabItem {
                    Image(systemName: "phone.fill")
                    Text("First Tab")
                  }
            }
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
    }
}

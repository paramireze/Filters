import SwiftUI

struct FilterList: View {
    var body: some View {
            NavigationView {
            List(filterData) { filter in
                NavigationLink(destination:FilterDetails()) {
                    FilterRow(filter: filter)
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
    }
}

import SwiftUI

struct FilterComplicationFracture: View {
    var body: some View {
        ScrollView {
                
            VStack(alignment: .leading) {
                Image("Complications1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
                Text("A G2 Filter with multiple fractured components.")
                .font(.subheadline)
                Divider()
                
                Text("IVC Filter Complications: Fracture")
                .font(.title)
                .foregroundColor(.blue)
                Divider()
                
                HStack(spacing: 20) {
                    Text("\u{2022}")
                    Text("Separation of any component of the filter due to structural failure")
                }
                
                HStack(spacing: 20) {
                    Text("\u{2022}")
                    Text("Accounts up to 22% of complications reported in the MAUDE database (7)")
                }
                Divider()
                
                NavigationLink(destination: ReferenceList(references: Array(arrayLiteral: 7), barTitle: "Fracture References")) {
                       Text("Reference: (7)")
                }
            }
        .padding()
        }
    }
}

struct FilterComplications_Previews: PreviewProvider {
    static var previews: some View {
        FilterComplicationFracture()
    }
}

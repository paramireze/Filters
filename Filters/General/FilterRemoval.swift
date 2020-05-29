import SwiftUI

struct FilterRemoval: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Indications for Filter Removal")
              .font(.title)
              .foregroundColor(.blue)
              Divider()
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("FDA: Consider removing the IVC filter as soon as protection from PE is no longer needed")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("SIR: Consider removing once the risk of clinically significant PE is reduced to an acceptable level and is estimated to be less than the risk of leaving the filter in situ")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("IVC filters are associated with potential complications, and the risk of these complications appears to increase with time")
            }
            Spacer()
        }
    .padding()
    }
}

struct FilterRemoval_Previews: PreviewProvider {
    static var previews: some View {
        FilterRemoval()
    }
}

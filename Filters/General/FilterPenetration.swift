import SwiftUI

struct FilterPenetration: View {
    var body: some View {
        VStack(alignment: .leading) {
                Image("Complications2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
                Text("IVC Filter Complicatinos: Penetration and Perforation")
                  .font(.title)
                  .foregroundColor(.blue)
                Divider()
                HStack(spacing: 20) {
                    Text("\u{2022}")
                    Text("Visualization of one or more filter struts > 3mm beyond the cava wall or within an adjacent structure.")
                }
                HStack(spacing: 20) {
                    Text("\u{2022}")
                    Text("Accounts for 20% of complications reported in the MAUDE database (Angel JVIR).")
                }
                Spacer()
            }
        .padding()
    }
}

struct FilterPenetration_Previews: PreviewProvider {
    static var previews: some View {
        FilterPenetration()
    }
}

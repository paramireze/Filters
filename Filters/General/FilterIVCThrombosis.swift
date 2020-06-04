import SwiftUI

struct FilterIVCThrombosis: View {
    var body: some View {
        VStack(alignment: .leading) {
                Image("Complications4")
                .resizable()
                .aspectRatio(contentMode: .fit)
                Text("A Vena tech LGM filter causing contraction and chronic thrombosis/stenosis of the IVC (10)")
                .font(.subheadline)
                Divider()
                Text("IVC Filter Complicatinos: IVC thrombosis and stenosis")
                  .font(.title)
                  .foregroundColor(.blue)
                Divider()
                HStack(spacing: 20) {
                    Text("\u{2022}")
                    Text("Formation of chronic DVT in the IVC secondary to prolonged IVC filter implantation")
                }
                HStack(spacing: 20) {
                    Text("\u{2022}")
                    Text("Increased risk with prolonged implantation and absence of therapeutic anticoagulation (8)(9).")
                }
                Divider()
                NavigationLink(destination: ReferenceList(references: Array(arrayLiteral: 8, 9, 10), barTitle: "IVC Thrombosis References")) {
                       Text("Reference: (8)(9)(10)")
                }
                Spacer()
            }
        .padding()
    }
}

struct FilterIVCThrombosis_Previews: PreviewProvider {
    static var previews: some View {
        FilterIVCThrombosis()
    }
}

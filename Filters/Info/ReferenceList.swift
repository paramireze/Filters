import SwiftUI

struct ReferenceList: View {
    var references: [Int]
    var barTitle: String
    
    var body: some View {
        List {
            ForEach(references, id: \.self ) { id in
                ReferenceDetails(reference: referenceData[id])
            }
        Spacer()
        }
        .navigationBarTitle(Text(barTitle))
        
    }
}

struct ReferenceList_Previews: PreviewProvider {
    static var previews: some View {
    
        ReferenceList(references: Array(1...referenceData.count), barTitle: "Reference List")
    }
}

import SwiftUI

struct ReferenceList: View {
    var references: [Int]
    var barTitle: String
    
    var body: some View {
        List {
            ForEach(references, id: \.self ) { asdf in
                ReferenceDetails(reference: referenceData[asdf])
            }
        Spacer()
        }
        .navigationBarTitle(Text(barTitle))
        
    }
}

struct ReferenceList_Previews: PreviewProvider {
    static var previews: some View {
    
        ReferenceList(references: Array(0...referenceData.count - 1), barTitle: "Reference List")
    }
}

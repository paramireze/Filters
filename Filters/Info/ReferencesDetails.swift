import SwiftUI

struct ReferenceDetails: View {
    var reference: Reference
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 20) {
                Text("\(reference.id)")
                Text(reference.text)
            }
        }
    }
}

struct References_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(referenceData, id: \.self) { asdf in
            ReferenceDetails(reference: referenceData[1])
        }
    }
}

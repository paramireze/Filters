import SwiftUI

struct FilterRow: View {
    
    var filter: Filter
    
    var body: some View {
        HStack {
            filter.image
                .resizable()
                .frame(width:34, height:53)
            Text(filter.name)
            Spacer()
        }
    }
}

struct FilterRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FilterRow(filter: filterData[0])

            FilterRow(filter: filterData[1])

        }
        .previewLayout(.fixed(width: 300, height: 60))
    }
}

import SwiftUI

struct FilterDetails: View {
    
    var filter: Filter
    
    var body: some View {
        
        VStack {
            IVCImage(image: filter.image)
            VStack (alignment: .leading) {
                Text(filter.name)
                    .font(.title)
                    .foregroundColor(.blue)
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FilterDetails(filter: filterData[0])
    }
}

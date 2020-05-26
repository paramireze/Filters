import SwiftUI

struct IVCImage: View {
    var image: Image
    
    var body: some View {
        image
//            .resizable()
//            .aspectRatio(contentMode: .fit)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        IVCImage(image: Image("ALN"))
    }
}

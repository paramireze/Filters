import SwiftUI

struct Filter: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    
}

extension Filter {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

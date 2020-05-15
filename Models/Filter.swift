import SwiftUI

struct Filter: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var short: String
    var category: Category
    fileprivate var imageName: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case aln = "ALN"
        case bard = "Bard"
        case braun = "Braun"
        case boston = "Boston"
        case cook = "Cook"
        case cordis = "Cordis"
        case rafael = "Rafael"
        case rex = "Rex"
        case volcano = "Volcano"
    }
}

extension Filter {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

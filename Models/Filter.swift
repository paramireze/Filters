import SwiftUI

struct Filter: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var subHeading: String
    var short: String
    var category: Category
    fileprivate var imageName: String
    var isFavorite: Bool
    var isFeatured: Bool
    var safetyConsiderations: [String]
    var safetyConsiderationReferences: [Int]
    var optimalRetrievalWindow: [String]
    var optimalRetrievalWindowReferences: [Int]
    var treatmentOptions: [String]
    var treatmentOptionReferences: [Int]
    var specifications: [String]
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case aln = "ALN"
        case bard = "Bard"
        case braun = "B. Braun"
        case boston = "Boston Scientific"
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

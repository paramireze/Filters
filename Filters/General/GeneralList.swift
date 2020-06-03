import SwiftUI

struct FilterAlertRow: View {
    
    var body: some View {
        NavigationLink(destination: FilterAlert()) {
            Text("FDA IVC filter alert")
        }
    }
}
struct IndicationsRow: View {
    var body: some View {
        NavigationLink(destination: IndicationsContraindications()) {
            Text("Indications/Contraindications")
        }
        .navigationBarTitle(Text("IVC Filters"))
    }
}

struct FilterRemovalRow: View {
    var body: some View {
        NavigationLink(destination: FilterRemoval()) {
            Text("IVC Filter Removal")
        }
    }
}

struct FilterComplicationFractureRow: View {
    var body: some View {
        NavigationLink(destination: FilterComplicationFracture()) {
            Text("Complications: Fracture")
        }
    }
}

struct FilterComplicationPenetrationRow: View {
    var body: some View {
        NavigationLink(destination: FilterPenetration()) {
            Text("Complications: Penetration and Perforation")
        }
    }
}

struct FilterComplicationMigrationEmbolizationRow: View {
    var body: some View {
        NavigationLink(destination: FilterMigrationEmbolization()) {
            Text("Complications: Migration and Embolization")
        }
    }
}

struct FilterComplicationIVCThrombisisRow: View {
    var body: some View {
        NavigationLink(destination: FilterIVCThrombosis()) {
            Text("Complications: IVC Thrombosis and Stenosis")
        }
    }
}

struct GeneralList: View {
    var body: some View {
        NavigationView {
            List {
                FilterAlertRow()
                IndicationsRow()
                FilterRemovalRow()
                FilterComplicationFractureRow()
                FilterComplicationPenetrationRow()
                FilterComplicationMigrationEmbolizationRow()
                FilterComplicationIVCThrombisisRow()
            }
            .navigationBarTitle(Text("General"))
        }
    }
}

struct GeneralList_Previews: PreviewProvider {
    static var previews: some View {
        GeneralList()
    }
}

//
//  GeneralList.swift
//  Filters
//
//  Created by Ramirez Paul E on 5/10/20.
//  Copyright © 2020 Ramirez Paul E. All rights reserved.
//

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
            Text("IVC Filter Complications: Fracture")
        }
    }
}

struct FilterComplicationPenetrationRow: View {
    var body: some View {
        NavigationLink(destination: FilterPenetration()) {
            Text("IVC Filter Complications: Penetration and Perforation")
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

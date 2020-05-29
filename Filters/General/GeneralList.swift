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

struct GeneralList: View {
    var body: some View {
        NavigationView {
            List {
                FilterAlertRow()
                IndicationsRow()
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

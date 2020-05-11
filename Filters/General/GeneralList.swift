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

struct GeneralList: View {
    var body: some View {
        NavigationView {
            List {
                FilterAlertRow()
            }
        }
    }
}

struct GeneralList_Previews: PreviewProvider {
    static var previews: some View {
        GeneralList()
    }
}

//
//  FilterMigrationEmbolization.swift
//  Filters
//
//  Created by Ramirez Paul E on 6/3/20.
//  Copyright © 2020 Ramirez Paul E. All rights reserved.
//

import SwiftUI

struct FilterMigrationEmbolization: View {
    var body: some View {
        VStack(alignment: .leading) {
                Image("Complications3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                Text("An embolized IVC filter is seen within the right ventricle (10)")
                .font(.subheadline)
                Divider()
                Text("IVC Filter Complicatinos: Migration and Embolization")
                  .font(.title)
                  .foregroundColor(.blue)
                Divider()
                HStack(spacing: 20) {
                    Text("\u{2022}")
                    Text("Movement of the device > 2 cm beyond the location of initial placement within the IVC")
                }
                HStack(spacing: 20) {
                    Text("\u{2022}")
                    Text("Accounts for 22% of complications reported in the MAUDE database (7)")
                }
                Divider()
                NavigationLink(destination: ReferenceList(references: Array(arrayLiteral: 7, 10), barTitle: "Filter Migration References")) {
                       Text("Reference: (7)(10)")
                }
                Spacer()
            }
        .padding()
    }
}

struct FilterMigrationEmbolization_Previews: PreviewProvider {
    static var previews: some View {
        FilterMigrationEmbolization()
    }
}

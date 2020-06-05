//
//  FilterPTS.swift
//  Filters
//
//  Created by Ramirez Paul E on 6/4/20.
//  Copyright © 2020 Ramirez Paul E. All rights reserved.
//

import SwiftUI

struct FilterPTS: View {
    var body: some View {
        VStack(alignment: .leading) {
                Image("Complications5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                Text("Discoloration, swelling, and skin changes compatible with PTS in apatient with caval occlusion secondary to an LGM IVC filter.")
                .font(.subheadline)
                Divider()
                Text("IVC Filter Complicatinos: PTS")
                  .font(.title)
                  .foregroundColor(.blue)
                Divider()
                HStack(spacing: 20) {
                    Text("\u{2022}")
                    Text("A constellation of symptoms following chronic DVT formation that includes swelling, heaviness, pain, skin changes, and/or venous ulceration (12).")
                }
                HStack(spacing: 20) {
                    Text("\u{2022}")
                    Text("May occur in up to 70% of patients with unresolved DVT and an indwelling IVC filter (13).")
                }
                HStack(spacing: 20) {
                     Text("\u{2022}")
                     Text("Risk appears to increase with prelonged filter implantation (14).")
                 }
                Divider()
                NavigationLink(destination: ReferenceList(references: Array(arrayLiteral: 12, 13, 14), barTitle: "VTE and Implantation References")) {
                       Text("Reference: (12)(13)(14)")
                }
                
            }
        .padding()
    }
}

struct FilterPTS_Previews: PreviewProvider {
    static var previews: some View {
        FilterPTS()
    }
}

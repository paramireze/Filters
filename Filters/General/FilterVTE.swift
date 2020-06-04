//
//  FilterVTE.swift
//  Filters
//
//  Created by Ramirez Paul E on 6/4/20.
//  Copyright © 2020 Ramirez Paul E. All rights reserved.
//

import SwiftUI

struct FilterVTE: View {
    var body: some View {
        VStack(alignment: .leading) {
                Image("Complications6")
                .resizable()
                .aspectRatio(contentMode: .fit)
                Text("A filling defect is seen within a lobar pulmonary artery compatible with pulmonary embolism.")
                .font(.subheadline)
                Divider()
                Text("IVC Filter Complicatinos: VTE after Implantantion")
                  .font(.title)
                  .foregroundColor(.blue)
                Divider()
                HStack(spacing: 20) {
                    Text("\u{2022}")
                    Text("A new DVT or PE that occurs in a patient after placement of an IVC filter.")
                }
                HStack(spacing: 20) {
                    Text("\u{2022}")
                    Text("Increased risk with prolonged implantation and absenxe of therapeutic anticoagulation (8)(9).")
                }
                Divider()
                NavigationLink(destination: ReferenceList(references: Array(arrayLiteral: 8, 9), barTitle: "VTE and Implantation References")) {
                       Text("Reference: (8)(9)")
                }
                Spacer()
            }
        .padding()
    }
}

struct FilterVTE_Previews: PreviewProvider {
    static var previews: some View {
        FilterVTE()
    }
}

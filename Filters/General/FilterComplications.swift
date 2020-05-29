//
//  FilterComplications.swift
//  Filters
//
//  Created by Ramirez Paul E on 5/29/20.
//  Copyright © 2020 Ramirez Paul E. All rights reserved.
//

import SwiftUI

struct FilterComplicationFracture: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("Complications1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            
            Text("Indications for Filter Removal")
              .font(.title)
              .foregroundColor(.blue)
              Divider()
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("FDA: Consider removing the IVC filter as soon as protection from PE is no longer needed")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("SIR: Consider removing once the risk of clinically significant PE is reduced to an acceptable level and is estimated to be less than the risk of leaving the filter in situ")
            }
        }
    .padding()
    }
}

struct FilterComplications_Previews: PreviewProvider {
    static var previews: some View {
        FilterComplicationFracture()
    }
}

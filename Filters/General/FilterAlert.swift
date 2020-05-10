//
//  FilterAlert.swift
//  Filters
//
//  Created by Ramirez Paul E on 5/10/20.
//  Copyright © 2020 Ramirez Paul E. All rights reserved.
//

import SwiftUI

struct FilterAlert: View {
    var body: some View {
        VStack {
          Text("In August 2010, the U.S. FDA issued a Safety Alert concerning the use of IVC Filters:")
            .font(.largeTitle)
            Spacer()
            Text("The FDA is concerned that these retrievable IVC filters, intended for short-term placement, are not always removed once a patient's risk for PE subsides. Known long term risks associated with IVC filters include but are not limited to lower limb deep vein thrombosis (DVT), filter fracture, filter migration, filter embolization and IVC perforation")
            
        }
        
        
    }
}

struct FilterAlert_Previews: PreviewProvider {
    static var previews: some View {
        FilterAlert()
    }
}

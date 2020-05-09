//
//  CircleImage.swift
//  Filters
//
//  Created by Ramirez Paul E on 5/3/20.
//  Copyright © 2020 Ramirez Paul E. All rights reserved.
//

import SwiftUI

struct IVCImage: View {
    var body: some View {
        Image("ALN")
            .resizable()
            .aspectRatio(contentMode: .fit)        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        IVCImage()
    }
}

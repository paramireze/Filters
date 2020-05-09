//
//  ContentView.swift
//  Filters
//
//  Created by Ramirez Paul E on 4/29/20.
//  Copyright © 2020 Ramirez Paul E. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            IVCImage()
            
            VStack (alignment: .leading) {
                Text("ALN Vena Cava Filter")
                    .font(.title)
                    .foregroundColor(.blue)
                
                
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

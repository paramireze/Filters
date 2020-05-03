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
        VStack (alignment: .leading) {
            Text("House on the Rock")
                .font(.title)
                .foregroundColor(.blue)
            HStack {
                Text("Not far from here,")
                    .font(.subheadline)
                Spacer()
                Text("Wisconsin")
                    .font(.subheadline)

            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

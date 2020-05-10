//
//  ContentView.swift
//  Filters
//
//  Created by Ramirez Paul E on 5/10/20.
//  Copyright © 2020 Ramirez Paul E. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           FilterList()
            .tabItem {
                VStack {
                    Text("IVC List")
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

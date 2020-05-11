//
//  InfoList.swift
//  Filters
//
//  Created by Ramirez Paul E on 5/11/20.
//  Copyright © 2020 Ramirez Paul E. All rights reserved.
//

import SwiftUI

struct InfoList: View {
    var body: some View {
        NavigationView {
            List {
                AboutRow()
                ReferenceRow()
            }
        }
        
    }
}

struct AboutRow: View {
    var body: some View {
        NavigationLink(destination: About()) {
            Text("About")
        }
    }
}

struct ReferenceRow: View {
    var body: some View {
        NavigationLink(destination: References()) {
            Text("References")
        }
    }
}

struct InfoList_Previews: PreviewProvider {
    static var previews: some View {
        InfoList()
    }
}

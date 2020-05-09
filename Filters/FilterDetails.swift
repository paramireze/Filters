//
//  ContentView.swift
//  Filters
import SwiftUI

struct FilterDetails: View {
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
        FilterDetails()
    }
}

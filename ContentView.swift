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
            GeneralList()
            .tabItem {
                VStack {
                    Text("General")
                    
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

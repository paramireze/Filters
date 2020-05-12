import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FilterList().environmentObject(UserData())
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
            InfoList()
            .tabItem {
                VStack {
                    Text("Info")
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

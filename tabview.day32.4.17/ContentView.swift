//
//  ContentView.swift
//  tabview.day32.4.17
//
//  Created by 李 on 2023/04/17.
//

import SwiftUI

struct ContentView: View {
    @State var tabIndex = 2
    var body: some View {
        TabView (selection: $tabIndex){
            Text("This is tab 1")
                .tabItem{VStack{
                    Image(systemName: "pencil")
                    Text("tab 1")
                }}.tag(0)
            VStack{
                Text("This is tab2")
                Text("This is more text")
            }
            .tabItem{
                VStack{
                    Image(systemName: "star")
                    Text("teb 2")
                }
            }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

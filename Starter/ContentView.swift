//
//  ContentView.swift
//  Starter
//
//  Created by Adnan Cobanoglu on 14.11.2022.
//

import SwiftUI

struct ContentView: View {
 

    var body: some View {
        TabView{
            PitchView()
                .tabItem {
                Image(systemName: "house")
            }
            TeamView()
                .tabItem {
                Image(systemName: "list.bullet")
            }
        }.accentColor(Color.yellow)
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

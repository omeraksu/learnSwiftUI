//
//  ContentView.swift
//  landmark
//
//  Created by Ömer Aksu on 13.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Category", systemImage: "star.fill")
                }

            LandmarkList()
                .tabItem {
                   Label("List", systemImage: "list.bullet")
               }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}

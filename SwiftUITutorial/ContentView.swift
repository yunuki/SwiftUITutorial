//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by 윤재욱 on 2021/12/18.
//

import SwiftUI

struct ContentView: View {
    @State private var sectionTab: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $sectionTab,
                content:  {
                    CategoryHome()
                        .tabItem {
                            Label("Featured", systemImage: "star")
                        }
                        .tag(Tab.featured)
                    
                    LandmarkList()
                        .tabItem {
                            Label("List", systemImage: "list.bullet")
                        }
                        .tag(Tab.list)
                })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}

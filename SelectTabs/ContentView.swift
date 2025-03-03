//
//  ContentView.swift
//  SelectTabs
//
//  Created by 0v0 on 2025/03/04.
//

import SwiftUI

private enum TabSelecion: Hashable {
   case home, search
}

struct ContentView: View {
    @State private var selectedTab: TabSelecion = .home
    
    var body: some View {
        VStack {
            Picker("Tab", selection: $selectedTab) {
                Text("Home").tag(TabSelecion.home)
                Text("Search").tag(TabSelecion.search)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            TabView(selection: $selectedTab) {
                Tab("Home", systemImage: "house",value: .home) {
                    Text("Home")
                }
                Tab("Search", systemImage: "magnifyingglass",value: .search) {
                    Text("Search")
                }
            }
            .tabViewStyle(.page)
        }
    }
}

#Preview {
    ContentView()
}

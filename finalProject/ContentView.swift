//
//  ContentView.swift
//  finalProject
//
//  Created by Rachel Liang on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            homeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    VStack{
                        Text("Home")
                    }
                }
                .tag(0)
            trackerView()
                .tabItem {
                    Image(systemName: "house.fill")
                    VStack{
                        Text("Tracker")
                    }
                }
                .tag(4)
            
            searchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(1)
            
            myChannelsView()
                .tabItem {
                    Image(systemName: "ellipsis.message")
                    Text("My Channels")
                }
                .tag(3)
            
            profileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

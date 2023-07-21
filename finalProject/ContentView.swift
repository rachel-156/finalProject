//
//  ContentView.swift
//  finalProject
//
//  Created by Rachel Liang on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    @State private var username: String = "" // Provide a valid username here for preview
    var body: some View {
        TabView(selection: $selectedTab) {
            homeView(username: $username)
                .tabItem {
                    Image(systemName: "house.fill")
                        .foregroundColor(Color.pink)
                    VStack{
                        Text("Home")
                    }
                }
                .tag(0)
            trackerView()
                .tabItem {
                    Image(systemName: "calendar.circle.fill")
                    VStack{
                        Text("Tracker")
                    }
                }
                .tag(4)
            
           
            
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

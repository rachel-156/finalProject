//
//  profileView.swift
//  finalProject
//
//  Created by Rachel Liang on 7/19/23.
//

import SwiftUI

struct profileView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color(red: 241/255, green: 239/255, blue: 231/255)
                    .ignoresSafeArea()
                VStack{
                    TextField(" Username", text: $username)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal)
                        .font(.title)
                    
                    TextField(" Password", text: $password)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal)
                        .font(.title)
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Login")
                    }
                    .padding(.trailing)
                    .font(.title2)
                }
                
            }
            
        }
    }
}
struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView()
    }
}

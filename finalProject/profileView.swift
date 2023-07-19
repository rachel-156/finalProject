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
    @State private var loginMessage: String = ""

    
    // dictionary/map of usernames and passwords
    let logins = ["Rachel": "Rl", "Amulya": "Ac", "Raaina": "Rd", "Grace": "Gx"]
    
    var body: some View {
        NavigationStack {
            ZStack{
                //background
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
                    
                    
                    Button("Login") {
                        if(validLogin(user: username, pass: password) == "correct"){
                            
                            NavigationLink(destination: homeView()){
                            }
                        } else{
                            loginMessage = validLogin(user: username, pass: password)
                        }
                    }
                    .font(.title2)
                    .padding(.trailing)
                    Text(loginMessage)
                        .font(.title)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                }
            }
        }
    }
    
    // function to check if inputted login is valid
    private func validLogin(user: String, pass: String) -> String {
        
        //username is in dictionary
        if(logins.keys.contains(user)){
            if(logins[user] != pass){
                return "Invalid password, try again!"
            }
        // username is not in dictionary
        }else{
            return "No such username exists, try again!"
        }
        return "correct";
    }
}
struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView()
    }
}

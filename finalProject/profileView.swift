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
    @State var canSubmit = false

    // dictionary/map of usernames and passwords
    let logins = ["Rachel": "Rl", "Amulya": "Ac", "Raaina": "Rd", "Grace": "Gx"]

    var body: some View {
        NavigationStack {
            ZStack{
                //background
                Color(red: 241/255, green: 239/255, blue: 231/255)
                    .ignoresSafeArea()

                VStack{

                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)

                    Image(systemName: "person.badge.key")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .padding()

                    TextField(" Username", text: $username)
                        .border(Color.black, width: 1)
                        .padding(.horizontal)
                        .font(.title)

                    TextField(" Password", text: $password)
                        .border(Color.black, width: 1)
                        .padding(.horizontal)
                        .font(.title)

                    NavigationLink(destination: homeView(username: $username), isActive: $canSubmit) {
                        Text("")
                    }

                    Button("Login") {
                        loginMessage = validLogin(user: username, pass: password)
                        if(loginMessage == "correct") {
                            self.canSubmit = true
                        } else {
                            self.canSubmit = false
                        }
                    }
                    .font(.title2)
                    .padding(.trailing)

                    if(loginMessage != "correct") {
                        Text(loginMessage)
                            .font(.title)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .padding(.top)
                    }
                }
            }
        }
    }

    // function to check if inputted login is valid
    private func validLogin(user: String, pass: String) -> String {

        //username is in dictionary
        if logins.keys.contains(user) {
            if logins[user] != pass {
                return "Invalid password, try again!"
            }
        } else {
            return "No such username exists, try again!"
        }
        return "correct"
    }
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView()
    }
}

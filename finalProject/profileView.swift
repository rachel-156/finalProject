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

    let logins = ["Rachel": "Rl", "Amulya": "Ac", "Raaina": "Rd", "Grace": "Gx"]

    var body: some View {
        NavigationStack {
            ZStack{
                Color(red: 241/255, green: 239/255, blue: 231/255)
                    .ignoresSafeArea()

                VStack{

                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding(.bottom, 5)
                    Text("Type in your credentials below.")         .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 25)

                    Image(systemName: "lock.square")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .padding(.bottom)
                        

                    TextField(" Username", text: $username)
                        .border(Color.black, width: 1)
                        .padding(.horizontal)
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(red: 128/255.0, green: 155/255.0, blue: 205/255.0))

                    TextField(" Password", text: $password)
                        .border(Color.black, width: 1)
                        .padding(.horizontal)
                        .foregroundColor(Color(red: 128/255.0, green: 155/255.0, blue: 205/255.0))
                        .bold()
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
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Color(red: 149/255, green: 180/255, blue: 201/255))
                    .cornerRadius(8)
                    .padding(10)
                    
  
                    if(loginMessage != "correct" && loginMessage.count > 0) {
                        Text(loginMessage)
                            .multilineTextAlignment(.center)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .padding()
                            .background(Color(red: 184/255.0, green: 224/255.0, blue: 210/255.0))
                            .cornerRadius(8)
                            .padding(5)
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

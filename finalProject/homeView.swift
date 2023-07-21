//
//  homeView.swift
//  finalProject
//
//  Created by Rachel Liang on 7/19/23.
//

import SwiftUI

struct homeView: View {
    @State private var selectedTab = 0
    @Binding var username: String

    var body: some View {
        ZStack{
            Color(red: 241/255, green: 239/255, blue: 231/255)
                .ignoresSafeArea()
            VStack{
                Text("Welcome to StudentSpeak \(username)!")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .border(Color(red: 128/255.0, green: 155/255.0, blue: 205/255.0), width: 3)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                Image("betterLogo")
                Text("Did you know almost 9 in 10 students who face academic challenges say that their mental health is affected? Additionally, 28% of students said they often feel isolated from others.")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color(red: 149/255, green: 180/255, blue: 201/255))
                    .cornerRadius(10)

                Text("Speak now to solve the growing student mental health crisis.")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top)
            }
            .padding()
        }
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

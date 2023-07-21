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
                    .multilineTextAlignment(.center)
                Image("Logo")
                Text("Did you know almost 9 in 10 students who face academic challenges say that their mental health is affected? Additionally, 28% of students said they often feel isolated from others.")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
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

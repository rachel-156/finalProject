//
//  myChannelsView.swift
//  finalProject
//
//  Created by Rachel Liang on 7/19/23.
//

import SwiftUI

struct myChannelsView: View {
    var body: some View {
        ZStack{
            Color(red: 241/255, green: 239/255, blue: 231/255)
                .ignoresSafeArea()
            NavigationStack {
                VStack {
                    Text("Channels")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Image(systemName: "filemenu.and.selection")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .padding(.bottom)
                    Text("Click on a channel to explore!")
                        .font(.title3)
                        .fontWeight(.bold)
                    NavigationLink(destination: SupportChannel()) {
                        Text("Support Channel")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Color(red: 128/255.0, green: 155/255.0, blue: 205/255.0))
                            .cornerRadius(8)
                            .padding()
                    }
                    
                    NavigationLink(destination: MentalHealth()) {
                        Text("Mental Help Channel")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Color(red: 149/255.0, green: 180/255.0, blue: 201/255.0))         .cornerRadius(8)
                            .padding()
                    }
                    
                    NavigationLink(destination: Tutoring()) {
                        Text("Tutoring Channel")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Color(red: 184/255.0, green: 224/255.0, blue: 210/255.0))
                            .cornerRadius(8)
                            .padding()
                    }
                    
                    NavigationLink(destination: GeneralHelp()) {
                        Text("General Help Channel")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Color(red: 234/255.0, green: 196/255.0, blue: 213/255.0))            .cornerRadius(8)
                            .padding()
                    }
                }
            }
        }
    }
}
    
struct myChannelsView_Previews: PreviewProvider {
    static var previews: some View {
        myChannelsView()
    }
}

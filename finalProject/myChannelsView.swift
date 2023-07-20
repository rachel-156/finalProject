//
//  myChannelsView.swift
//  finalProject
//
//  Created by Rachel Liang on 7/19/23.
//

import SwiftUI

struct myChannelsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("Channels")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Spacer()
                
                Image(systemName: "filemenu.and.selection")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                
                Spacer()
                Text("Click on a channel to explore!")
                    .font(.title3)
                NavigationLink(destination: SupportChannel()) {
                    Text("Support Channel")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.cyan)
                        .cornerRadius(8)
                        .padding()
                }
                
                NavigationLink(destination: MentalHealth()) {
                    Text("Mental Help Channel")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.cyan)
                        .cornerRadius(8)
                        .padding()
                }
                
                NavigationLink(destination: Tutoring()) {
                    Text("Tutoring Channel")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.cyan)
                        .cornerRadius(8)
                        .padding()
                }
                
                NavigationLink(destination: GeneralHelp()) {
                    Text("General Help Channel")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.cyan)
                        .cornerRadius(8)
                        .padding()
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

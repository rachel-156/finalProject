//
//  GeneralHelp.swift
//  finalProject
//
//  Created by Mohamad Daniar on 7/20/23.
//

import SwiftUI

struct GeneralHelp: View {
    
    @State private var commentSection: String = ""
    @State private var comment: String = ""
    @State private var showText: Bool = false
    @State private var message: String = ""
    @State private var clickCounter: Int = 0
    
    var body: some View {
        VStack{
            Text("Welcome to the General Help Channel")
                .font(.title)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding()
            
            Image(systemName: "person.fill.questionmark")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            
            Text("What do you need help with?")
            
            
            TextField("Write a comment", text: $comment)

                .padding()
            
            Button("Submit      ") {
                if(clickCounter >= 8){
                    message = "Max number of comments reached."
                } else if(comment != ""){
                    clickCounter += 1
                    self.showText = true
                    commentSection += String(clickCounter) + ". " + comment + "\n"
                }
            }
            .font(.title2)
            .border(Color.gray, width: 3)
            .cornerRadius(40)
            Spacer()
            
            if(showText == true){
                Label(commentSection, systemImage: "message.badge")
                    .font(.title2)
                .padding()
            }
            Text(message)
                .font(.title3)
        }
    }
}

struct GeneralHelp_Previews: PreviewProvider {
    static var previews: some View {
        GeneralHelp()
    }
}

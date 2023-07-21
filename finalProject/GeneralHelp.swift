//
//  GeneralHelp.swift
//  finalProject
//
//  Created by Mohamad Daniar on 7/20/23.
//

import SwiftUI

struct Comment: Identifiable {
    let id = UUID()
    let text: String
}

struct GeneralHelp: View {
    
    @State private var commentSection: [Comment] = []
    @State private var comment: String = ""
    @State private var message: String = ""
    @State private var clickCounter: Int = 0
    
    var body: some View {
        ZStack{
            Color(red: 241/255, green: 239/255, blue: 231/255)
                .ignoresSafeArea()
            VStack{
                Text("Welcome to the General Help Channel")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding()
                Image(systemName: "questionmark.app")
                    .resizable()
                    .foregroundColor(Color(red: 184/255.0, green: 224/255.0, blue: 210/255.0))
                    .frame(width: 150, height: 150)
                Text("What do you need help with?")
                    .font(.title3)
                    .fontWeight(.bold)
                TextField("Write a comment...", text: $comment)
                    .padding()
                Button(" Submit    ") {
                    if(clickCounter >= 8){
                        message = "Max number of comments reached."
                    } else if(comment != ""){
                        clickCounter += 1
                        commentSection.append(Comment(text: comment))
                        comment = ""
                    }
                }
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
                .padding()
                .background(Color(red: 184/255.0, green: 224/255.0, blue: 210/255.0))
                .cornerRadius(8)
                
                if !commentSection.isEmpty {
                    List(commentSection) { commentItem in
                        Label {
                            Text(commentItem.text)
                                .font(.title2)
                        } icon: {
                            Image(systemName: "message.badge")
                                .foregroundColor(Color(red: 184/255.0, green: 224/255.0, blue: 210/255.0))
                        }
                    }
                }
                Text(message)
                    .font(.title3)
            }
        }
    }
}

struct GeneralHelp_Previews: PreviewProvider {
    static var previews: some View {
        GeneralHelp()
    }
}

//
//  MentalHealth.swift
//  finalProject
//
//  Created by Mohamad Daniar on 7/20/23.
//

import SwiftUI

struct MentalHealth: View {
    
    @State private var commentSection: [Comment] = []
    @State private var comment: String = ""
    @State private var message: String = ""
    @State private var clickCounter: Int = 0
    
    var body: some View {
        ZStack{
            Color(red: 241/255, green: 239/255, blue: 231/255)
                .ignoresSafeArea()
            VStack{
                Text("Welcome to the Mental Health Channel")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding()
                Image(systemName: "brain.head.profile")
                    .resizable()
                    .foregroundColor(Color(red: 149/255.0, green: 180/255.0, blue: 201/255.0))
                    .frame(width: 150, height: 150)
                Text("How are you feeling today?")
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
                .background(Color(red: 149/255.0, green: 180/255.0, blue: 201/255.0))
                .cornerRadius(8)
                
                if !commentSection.isEmpty {
                    List(commentSection) { commentItem in
                        Label {
                            Text(commentItem.text)
                                .font(.title2)
                        } icon: {
                            Image(systemName: "message.badge")
                                .foregroundColor(Color(red: 149/255.0, green: 180/255.0, blue: 201/255.0))
                        }
                    }
                }
                Text(message)
                    .font(.title3)
            }
        }
    }
}

struct MentalHealth_Previews: PreviewProvider {
    static var previews: some View {
        MentalHealth()
    }
}

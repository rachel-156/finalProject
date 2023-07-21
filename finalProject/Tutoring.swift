//
//  Tutoring.swift
//  finalProject
//
//  Created by Mohamad Daniar on 7/20/23.
//
import SwiftUI

struct Tutoring: View {
    
    @State private var commentSection: [Comment] = []
    @State private var comment: String = ""
    @State private var message: String = ""
    @State private var clickCounter: Int = 0
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 241/255, green: 239/255, blue: 231/255)
                    .ignoresSafeArea()
                VStack{
                    Text("Welcome to the Tutoring Channel")
                        .font(.title)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding()
                    Image(systemName: "books.vertical")
                        .resizable()
                        .foregroundColor(Color(red: 128/255.0, green: 155/255.0, blue: 205/255.0))
                        .frame(width: 150, height: 150)
                    NavigationLink(destination: WebView()) {
                        Text("Find Study Resources")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(10)
                            .border(Color.black, width: 3)
                            .padding(.vertical)
                    }
                    Text("What topic do you need help with?")
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
                    .background(Color(red: 128/255.0, green: 155/255.0, blue: 205/255.0))
                    .cornerRadius(8)
                    if !commentSection.isEmpty {
                        List(commentSection) { commentItem in
                            Label {
                                Text(commentItem.text)
                                    .font(.title2)
                            } icon: {
                                Image(systemName: "message.badge")
                                    .foregroundColor(Color(red: 128/255.0, green: 155/255.0, blue: 205/255.0))
                            }
                        }
                    }
                    Text(message)
                        .font(.title3)
                }
            }
        }
    }
}

struct Tutoring_Previews: PreviewProvider {
    static var previews: some View {
        Tutoring()
    }
}

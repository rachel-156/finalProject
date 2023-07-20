//
//  Tutoring.swift
//  finalProject
//
//  Created by Mohamad Daniar on 7/20/23.
//

import SwiftUI

struct Tutoring: View {
    var body: some View {
        VStack{
            Text("Welcome to the Tutoring Channel")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            TextField("What topic do you need help on?", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)

                .padding()
            Button("Reply") {
                
            }
        }
    }
}

struct Tutoring_Previews: PreviewProvider {
    static var previews: some View {
        Tutoring()
    }
}

//
//  MentalHealth.swift
//  finalProject
//
//  Created by Mohamad Daniar on 7/20/23.
//

import SwiftUI

struct MentalHealth: View {
    var body: some View {
        VStack{
            Text("Welcome to the Mental Health Channel")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            TextField("How are you feeling today?", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)

                .padding()
            Button("Reply") {
                
            }
        }
    }
}

struct MentalHealth_Previews: PreviewProvider {
    static var previews: some View {
        MentalHealth()
    }
}

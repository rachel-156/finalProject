//
//  GeneralHelp.swift
//  finalProject
//
//  Created by Mohamad Daniar on 7/20/23.
//

import SwiftUI

struct GeneralHelp: View {
    var body: some View {
        VStack{
            Text("Welcome to the General Help Channel")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            TextField("What do you need help with?", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)

                .padding()
            Button("Reply") {
                
            }
        }
    }
}

struct GeneralHelp_Previews: PreviewProvider {
    static var previews: some View {
        GeneralHelp()
    }
}

//
//  SupportChannel.swift
//  finalProject
//
//  Created by Mohamad Daniar on 7/20/23.
//

import SwiftUI

struct SupportChannel: View {
    var body: some View {
        VStack{
            Text("Welcome to the Support Channel")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            TextField("What's bothing you today?", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)

                .padding()
            Button("Reply") {
                
            }
        }
    }
}
struct SupportChannel_Previews: PreviewProvider {
    static var previews: some View {
        SupportChannel()
    }
}

//
//  trackerView.swift
//  finalProject
//
//  Created by Amulya on 7/19/23.
//

import SwiftUI

struct trackerView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Click here to track your progress")
                Button("Sleep Tracker"){
                }
            }
        }
    }
}

struct trackerView_Previews: PreviewProvider {
    static var previews: some View {
        trackerView()
    }
}

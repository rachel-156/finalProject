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
            ZStack{
                Color(red: 241/255, green: 239/255, blue: 231/255)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Spacer()
                        Image("Logo")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                    }
                    Text("Click here to track your progress")
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: sleepTrackerView()) {
                        Text("Sleep Tracker")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.cyan)
                            .cornerRadius(8)
                            .padding()
                    }
                    NavigationLink(destination: moodTrackerView()) {
                        Text("Mood Tracker")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.cyan)
                            .cornerRadius(8)
                            .padding()
                    }
                    NavigationLink(destination: studyTrackerView()) {
                        Text("Study Tracker")
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
}

struct trackerView_Previews: PreviewProvider {
    static var previews: some View {
        trackerView()
    }
}

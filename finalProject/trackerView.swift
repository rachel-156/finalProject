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
                    Text("Select a tracker to see your progress")
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: sleepTrackerView()) {
                        Text("Sleep Tracker")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Color(red: 128/255.0, green: 155/255.0, blue: 205/255.0))
                            .cornerRadius(8)
                            .padding()
                    }
                    NavigationLink(destination: moodTrackerView()) {
                        Text("Mood Tracker")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Color(red: 149/255.0, green: 180/255.0, blue: 201/255.0))
                            .cornerRadius(8)
                            .padding()
                    }
                    NavigationLink(destination: studyTrackerView()) {
                        Text("Study Tracker")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Color(red: 184/255.0, green: 224/255.0, blue: 210/255.0)) 
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

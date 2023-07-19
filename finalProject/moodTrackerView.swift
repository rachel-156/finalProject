//
//  moodTrackerView.swift
//  finalProject
//
//  Created by Amulya on 7/19/23.
//

import SwiftUI

struct moodTrackerView: View {
    @State private var customMessage = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 241/255, green: 239/255, blue: 231/255)
                    .ignoresSafeArea()
                VStack{
                    Text("Mood Tracker")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("Select your mood...")
                        .font(.title2)
                        .fontWeight(.medium)
                    HStack{
                        Button("😄") {
                            customMessage = "You are radiating with happiness! Remember to enjoy life and spread your joy to others!"
                        }
                        Button("🙂") {
                            customMessage = "Your happiness is contagious. Keep smiling!"
                        }
                        Button("😐") {
                            customMessage = "It's okay to feel just okay. But remember that happiness is just around the corner if you are willing to look for it!"
                        }
                        Button("🙁") {
                            customMessage = "Don't be sad! Remember that every dark cloud has a silver lining. Try to look for the beauty in the little things."
                        }
                        Button("😭") {
                            customMessage = "I'm sorry to see that you feel so sad. Chin up and remember that things will get better. The only way you can go from here is up!"
                        }
                        Button("😤") {
                            customMessage = "You seem annoyed. Try to take a deep breath and come back with a fresh mind! Trust me, you'll feel much better!"
                        }
                        Button("😡") {
                            customMessage = "You seem furious. Try to step back from the cause of your anger and maybe do something else to distract you from it."
                        }

                    }
                    .font(.largeTitle)
                    .padding()
                    if customMessage.count > 0 {
                        Text(customMessage)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding()
                            .background(Color.cyan)
                            .cornerRadius(8)
                            .padding()
                        NavigationLink(destination: myChannelsView()) {
                            Text("Click to express your feelings")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .padding()
                                .background(Color.cyan)
                                .cornerRadius(8)
                        }
                    }
                    //Text("Do you want to talk about it?")
                }
            }
        }
    }
}

struct moodTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        moodTrackerView()
    }
}

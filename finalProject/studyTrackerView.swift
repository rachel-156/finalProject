//
//  studyTrackerView.swift
//  finalProject
//
//  Created by Amulya on 7/19/23.
//

import SwiftUI

struct studyTrackerView: View {
    @StateObject private var vm = ViewModel()
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    private let width: Double = 250
    @State var reservationDate = Date()
    @State private var learnMore: String = ""
    @State private var clickCount: Int = 0
    @State private var buttonText: String = "Learn about the Pomodoro Method"
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 241/255, green: 239/255, blue: 231/255)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Study Tracker")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 5)
                    

                    
                    Text("Move the slider to set your desired work time.")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 5)
                    
                    Text("\(vm.time)")
                        .font(.system(size: 70, weight: .medium, design: .rounded))
                        .alert("Timer done, feel free to take a 5 minute break now!", isPresented: $vm.showingAlert) {
                            Button("Continue", role: .cancel) {
                                // Code
                            }
                        }
                        .padding()
                        .frame(width: width)
                        .background(.thinMaterial)
                        .cornerRadius(20)
                        .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 128/255.0, green: 155/255.0, blue: 205/255.0), lineWidth: 6)
                            )
                        .padding(.top, 5)
                    
                    Slider(value: $vm.minutes, in: 1...25, step: 1)
                        .padding()
                        .disabled(vm.isActive)
                        .animation(.easeInOut, value: vm.minutes)
                        .frame(width: width)
                        .accentColor(Color(red: 149/255.0, green: 180/255.0, blue: 201/255.0))


                    HStack(spacing:50) {
                        Button("Start") {
                            vm.start(minutes: vm.minutes)
                        }
                        .disabled(vm.isActive)
                        
                        Button("Reset", action: vm.reset)
                            .tint(.red)
                    }
                    .frame(width: width)
                    .padding(.bottom, 15)
                
                    
                    
                    Button(buttonText) {
                        clickCount += 1
                        if(clickCount % 2 == 1){
                            learnMore = ""
                            buttonText = "Learn about the Pomodoro Method"
                        } else{
                            learnMore = "This tracker was designed based off of the Pomodoro method where you study for 25 minutes then take a 5 minute break!"
                            buttonText = "Click to hide text"
                        }
                        
                    }
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Color(red: 184/255.0, green: 224/255.0, blue: 210/255.0))
                    .cornerRadius(8)
                    .padding()
    
                    Text(learnMore)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                }
                .onReceive(timer) { _ in
                    vm.updateCountdown()
                }
            }
        }
    }
}

        
    


struct studyTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        studyTrackerView()
    }
}

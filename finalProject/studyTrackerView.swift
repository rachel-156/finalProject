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

            var body: some View {
                Form {
                    HStack {
                        DatePicker(
                            selection: $reservationDate, in: Date()...,
                            displayedComponents: [.date, .hourAndMinute]
                        ) {}
                        Button(action: { print("do something!") }) {
                            HStack {
                                Image(systemName: "arrow.right.circle")
                                Text("Done")
                            }
                        }.padding(20)
                    }
                    Text("Date is \(reservationDate.formatted(date: .long, time: .complete))")
                        .padding()
                    VStack {
                        Text("\(vm.time)")
                            .font(.system(size: 70, weight: .medium, design: .rounded))
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: width)
                            .background(.thinMaterial)
                            .cornerRadius(20)
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 4))
                            .alert("Timer Done", isPresented: $vm.showingAlert) {
                                Button("Continue", role: .cancel) {
                                    //code
                                }
                            }
                        Slider(value: $vm.minutes, in: 1...25, step: 1)
                            .padding()
                            .frame(width: width)
                            .disabled(vm.isActive)
                            .animation(.easeInOut, value: vm.minutes)
                        
                        HStack(spacing: 50) {
                            Button("Start") {
                                vm.start(minutes: vm.minutes)
                            }
                            .disabled(vm.isActive)
                            
                            Button("Reset", action: vm.reset)
                                .tint(.red)
                            
                        }
                        .frame(width: width)
                    }
                    .onReceive(timer) { _ in
                        vm.updateCountdown()
                    }
                }
            }
        }
    


struct studyTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        studyTrackerView()
    }
}

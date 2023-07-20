//
//  studyTrackerView.swift
//  finalProject
//
//  Created by Amulya on 7/19/23.
//

import SwiftUI

struct studyTrackerView: View {

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
                }
            }
        }
    


struct studyTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        studyTrackerView()
    }
}

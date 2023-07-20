//
//  sleepTrackerView.swift
//  finalProject
//
//  Created by Amulya on 7/19/23.
//

import SwiftUI

struct sleepTrackerView: View {
    @State private var startTime = ""
    @State private var endTime = ""
    @State private var timeDifferenceText = ""
    
    var body: some View {
        VStack {
            TextField("Start Time", text: $startTime)
            TextField("End Time", text: $endTime)
            Button("Calculate") {
                calculateButtonTapped()
            }
            Text(timeDifferenceText)
        }
        .padding()
    }
    
    func calculateButtonTapped() {
        if let startTimeDate = convertToMilitaryTime(standardTime: startTime),
           let endTimeDate = convertToMilitaryTime(standardTime: endTime) {
            let timeDifference = calculateTimeDifference(start: startTimeDate, end: endTimeDate)
            timeDifferenceText = "Time Difference: \(timeDifference.hours) hours and \(timeDifference.minutes) minutes"
        } else {
            timeDifferenceText = "Invalid time format. Please do not forget to include AM or PM"
        }
    }
    
    func convertToMilitaryTime(standardTime: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a"
        return dateFormatter.date(from: standardTime)
    }
    
    func calculateTimeDifference(start: Date, end: Date) -> (hours: Int, minutes: Int) {
        let timeInterval = end.timeIntervalSince(start)
        let minutes = Int(timeInterval / 60)
        let hours = minutes / 60
        return (hours, minutes % 60)
    }
}

struct sleepTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        sleepTrackerView()
    }
}

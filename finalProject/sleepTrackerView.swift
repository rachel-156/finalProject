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
    @State private var personalizedMessage = ""
        
    var body: some View {
            VStack {
                Text("Sleep Tracker")
                    .font(.largeTitle)
                    .padding()
                Text("Enter the time you go to sleep and the time you wake up to find out how many hours of sleep you get each night. Then learn about how much sleep is just right and if you are within that range!")
                    .multilineTextAlignment(.center)
                Image(systemName: "bed.double")
                    .resizable()
                    .frame(width: 200, height: 150)
                    .padding()
                TextField(" Bed Time", text: $startTime)
                    .font(.title2)
                TextField(" Wake Up Time", text: $endTime)
                    .font(.title2)
                Button("Calculate") {
                    calculateButtonTapped()
                }
                    .font(.title2)
                Text(timeDifferenceText)
                    .padding()
                    .multilineTextAlignment(.center)
                Text(personalizedMessage) // Display personalized message here
                    .font(.headline)
                    .multilineTextAlignment(.center)
            }
        .padding()
    }
        
    func calculateButtonTapped() {
        if let startTimeDate = convertToMilitaryTime(standardTime: startTime),
            let endTimeDate = convertToMilitaryTime(standardTime: endTime) {
            let timeDifference = calculateTimeDifference(start: startTimeDate, end: endTimeDate)
            timeDifferenceText = "Time Difference: \(timeDifference.hours) hours and \(timeDifference.minutes) minutes"
            personalizedMessage = getPersonalizedMessage(hours: timeDifference.hours)
        } else {
            timeDifferenceText = "Invalid time format. Please do not forget to include AM or PM"
            personalizedMessage = ""
        }
    }
        
    func convertToMilitaryTime(standardTime: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a"
        return dateFormatter.date(from: standardTime)
    }
        
    func calculateTimeDifference(start: Date, end: Date) -> (hours: Int, minutes: Int) {
        // Adjust end time if it's earlier than the start time (indicating that it spans across different days)
        var adjustedEndTime = end
        if end < start {
            adjustedEndTime = Calendar.current.date(byAdding: .day, value: 1, to: end) ?? end
        }

        let timeInterval = adjustedEndTime.timeIntervalSince(start)
        let absoluteTimeInterval = abs(timeInterval)
        let minutes = Int(absoluteTimeInterval / 60)
        let hours = minutes / 60
        return (hours, minutes % 60)
    }
        
    func getPersonalizedMessage(hours: Int) -> String {
        if hours >= 10 {
            return "You had too much sleep! Although it is good to get a good night's rest, keep in mind that getting too much sleep can also be a bad thing!"
        } else if hours <= 6 {
            return "You should try to get more sleep. Although it might be tempting to stay up late playing videogames or maybe even cramming last minute for an exam, remember that sleep is very important to being healthy!"
        } else {
            return "You slept for just the right amount of hours. Keep up the good work and remember to sleep at consistent hours so that your body maintains its sleep schedule and you wake up to feel the most well rested!"
        }
    }
}

struct sleepTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        sleepTrackerView()
    }
}

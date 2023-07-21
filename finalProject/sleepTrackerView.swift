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
        ZStack{
            Color(red: 241/255, green: 239/255, blue: 231/255)
                .ignoresSafeArea()
            VStack {
                Text("Sleep Tracker")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                Text("Enter the time you go to sleep and the time you wake up.")         .multilineTextAlignment(.center)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding(.bottom, 25)
                    
                Image(systemName: "bed.double")
                    .resizable()
                    .frame(width: 150, height: 125)
                    .padding()
                TextField(" Bed Time", text: $startTime)
                    .font(.title2)
                TextField(" Wake Up Time", text: $endTime)
                    .font(.title2)
                Button("Calculate") {
                    calculateButtonTapped()
                }
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Color(red: 128/255.0, green: 155/255.0, blue: 205/255.0))
                    .cornerRadius(8)
                Text(timeDifferenceText)
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .fontWeight(.semibold)
                if personalizedMessage.count > 0 {
                    Text(personalizedMessage)
                        .multilineTextAlignment(.center)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding()
                        .background(Color(red: 128/255.0, green: 155/255.0, blue: 205/255.0))
                        .cornerRadius(8)
                }
            }
        .padding()
    }
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
            return "You should try to get more sleep. Although it might be tempting to stay up late playing videogames or maybe even cramming last minute for an exam, remember that sleep is very important!"
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

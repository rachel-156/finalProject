//
//  sleepTrackerView.swift
//  finalProject
//
//  Created by Amulya on 7/19/23.
//

import SwiftUI

struct sleepTrackerView: View {
    /*
    var startTime: String
    var endTime: String
    func calculateSleep(startTime: String, endTime: String) {
        if startTime.suffix(2) == "AM" {
            startTime = String(12 - Int(startTime.dropLast(3)))
        }
    }
     */
    var body: some View {
        VStack{
            Text("This is the Sleep Tracker")
            //TextField("Time you went to sleep:", text: startTime)
            //TextField("Time you woke up:", text: endTime)
        }
        .padding()
    }
}

struct sleepTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        sleepTrackerView()
    }
}

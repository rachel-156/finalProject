//
//  WebView.swift
//  finalProject
//
//  Created by Amulya on 7/20/23.
//

import SwiftUI

struct WebView: View {
    var websiteURLs: [String] = ["https://www.how-to-study.com", "https://thecollegepost.com/online-study-tools-2/", "https://www.makeuseof.com/student-sites-learn-the-best-study-techniques-and-methods/"]
    
    var body: some View {
        ZStack{
            Color(red: 241/255, green: 239/255, blue: 231/255)
                .ignoresSafeArea()
            VStack {
                Text("Top Three Recommended Study Resources")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Tap the buttons to open the websites externally")
                    .font(.headline)
                    .fontWeight(.semibold)
                ForEach(websiteURLs, id: \.self) { url in
                    Button((websiteName(for: url))) {
                        if let url = URL(string: url) {
                            UIApplication.shared.open(url)
                        }
                    }
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Color(red: 128/255.0, green: 155/255.0, blue: 205/255.0))
                    .cornerRadius(8)
                    .padding()
                }
            }
        }
    }
    
    private func websiteName(for url: String) -> String {
        if let host = URL(string: url)?.host {
            return host
        }
        return ""
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}


//
//  Web2View.swift
//  finalProject
//
//  Created by Amulya on 7/20/23.
//

import SwiftUI

struct Web2View: View {
    var websiteURLs: [String] = ["http://www.mhresources.org", "https://www.nimh.nih.gov/health/find-help", "https://www.healthline.com/health/mental-health-resources"]
    
    var body: some View {
        ZStack{
            Color(red: 241/255, green: 239/255, blue: 231/255)
                .ignoresSafeArea()
            VStack {
                Text("Top Three Recommended Mental Health Resources")
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
                    .background(Color(red: 149/255.0, green: 180/255.0, blue: 201/255.0))
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

struct Web2View_Previews: PreviewProvider {
    static var previews: some View {
        Web2View()
    }
}

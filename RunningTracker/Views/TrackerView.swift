//
//  TrackerView.swift
//  RunningTracker
//
//  Created by Aidan Kang on 2023-02-04.
//

import SwiftUI

struct TrackerView: View {
    var body: some View {
        VStack(spacing: 30) {
            
            VStack(spacing: 15) {
                HStack(spacing: 30) {
                    Image(systemName: "figure.run")
                        .font(.system(size: 80))
                    Image(systemName: "figure.run")
                        .font(.system(size: 80))
                    Image(systemName: "figure.run")
                        .font(.system(size: 80))
                }
                .padding()
                
                HStack {
                    Text("Enter the statistics of your run:")
                        .font(.title3.smallCaps())
                        .bold()
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Body Weight (kg):")
                        .font(.body.smallCaps())
                    TextField("00.0", text: .constant(""))
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Distance (km):")
                        .font(.body.smallCaps())
                    TextField("00.0", text: .constant(""))
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Time (min):")
                        .font(.body.smallCaps())
                    TextField("00.0", text: .constant(""))
                }
                .padding(.horizontal)
            }
            
            
            HStack {
                Text("Your run:")
                    .font(.title3.smallCaps())
                    .bold()
                Spacer()
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .navigationTitle("Running Tracker")
    }
}

struct TrackerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TrackerView()
        }
    }
}

//
//  TrackerView.swift
//  RunningTracker
//
//  Created by Aidan Kang on 2023-02-04.
//

import SwiftUI

struct TrackerView: View {
    
    // MARK: Stored properties
    
    @State var providedBodyWeight = ""
    
    // MARK: Computed properties
    
    var bodyWeight: Double? {
        
        guard let amountAsDouble = Double(providedBodyWeight) else {
            return nil
        }
        return amountAsDouble
    }
    
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
                    TextField("00.0", text: $providedBodyWeight)
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
            
            
            VStack(spacing: 15) {
                HStack {
                    Text("Your run:")
                        .font(.title3.smallCaps())
                        .bold()
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack(spacing: 5) {
                    Image(systemName: "flame.fill")
                        .font(.system(size:20))
                    Text("Calories Burned:")
                        .font(.body.smallCaps())
                    Text("0 kcal")
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack(spacing: 5) {
                    Image(systemName: "figure.run")
                        .font(.system(size:20))
                    Text("Running Pace:")
                        .font(.body.smallCaps())
                    Text("0 min/km")
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack(spacing: 5) {
                    Image(systemName: "speedometer")
                        .font(.system(size:20))
                    Text("Average Speed:")
                        .font(.body.smallCaps())
                    Text("0 km/h")
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack(spacing: 5) {
                    Image(systemName: "clock")
                        .font(.system(size:20))
                    Text("Time:")
                        .font(.body.smallCaps())
                    Text("0 min")
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack(spacing: 5) {
                    Image(systemName: "space")
                        .font(.system(size:20))
                    Text("Distance:")
                        .font(.body.smallCaps())
                    Text("0 km")
                    Spacer()
                }
                .padding(.horizontal)
            }
            
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

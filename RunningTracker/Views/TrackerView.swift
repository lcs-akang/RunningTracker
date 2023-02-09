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
    @State var providedDistance = ""
    @State var providedTime = ""
    
    @Binding var history: [Result]
    
    // MARK: Computed properties
    
    var bodyWeight: Double? {
        
        guard let amountAsDouble = Double(providedBodyWeight) else {
            return nil
        }
        return amountAsDouble
    }
    
    
    var distance: Double? {
        
        guard let amountAsDouble = Double(providedDistance) else {
            return nil
        }
        return amountAsDouble
    }
    
    var distanceFormatted: String {
        guard let distance = distance else {
            return "???"
        }
        
        return distance.formatted(.number.precision(.fractionLength(1)))
        
    }
    
    var time: Double? {
        
        guard let amountAsDouble = Double(providedTime) else {
            return nil
        }
        return amountAsDouble
    }
    
    var timeFormatted: String {
        guard let time = time else {
            return "???"
        }
        
        return time.formatted(.number.precision(.fractionLength(0)))
        
    }
    
    var averageSpeed: Double? {
        
        guard let distanceAsDouble = distance else {
            return nil
        }
        
        guard let timeAsDouble = time else {
            return nil
        }
        
        let timeInHours = timeAsDouble / 60
        
        let averageSpeed = distanceAsDouble / timeInHours
        
        return averageSpeed
        
    }
    
    var averageSpeedFormatted: String {
        guard let speed = averageSpeed else {
            return "???"
        }
        
        return speed.formatted(.number.precision(.fractionLength(1)))
        
    }
    
    var caloriesBurned: Double? {
        
        guard let weightAsDouble = bodyWeight else {
            return nil
        }
        
        guard let timeAsDouble = time else {
            return nil
        }
        
        guard let speedAsDouble = averageSpeed else {
            return nil
        }
        
        let caloriesBurned = ( timeAsDouble * (speedAsDouble * 3.5 * weightAsDouble) ) / 200
        
        return caloriesBurned
    }
    
    var caloriesBurnedFormatted: String {
        guard let calories = caloriesBurned else {
            return "???"
        }
        
        return calories.formatted(.number.precision(.fractionLength(0)))
        
    }
    
    
    var runningPace: Double? {
        
        guard let timeAsDouble = time else {
            return nil
        }
        
        guard let distanceAsDouble = distance else {
            return nil
        }
        
        let runningPace = timeAsDouble / distanceAsDouble
        
        return runningPace
        
    }
    
    var runningPaceFormatted: String {
        guard let pace = runningPace else {
            return "???"
        }
        
        return pace.formatted(.number.precision(.fractionLength(1)))
        
    }
    
    
    var body: some View {
        VStack(spacing: 30) {
            
            VStack(spacing: 15) {
                
                HStack {
                    Text("Running Tracker")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack(spacing: 30) {
                    Image(systemName: "figure.run")
                        .font(.system(size: 80))
                    Image(systemName: "figure.run")
                        .font(.system(size: 80))
                    Image(systemName: "figure.run")
                        .font(.system(size: 80))
                }
                .padding()
                
                
                Group {
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
                        TextField("00.0", text: $providedDistance)
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Time (min):")
                            .font(.body.smallCaps())
                        TextField("00.0", text: $providedTime)
                    }
                    .padding(.horizontal)
                }
            }
            
            VStack(spacing: 15) {
                HStack {
                    Text("Your run:")
                        .font(.title3.smallCaps())
                        .bold()
                    Spacer()
                }
                .padding(.horizontal)
                
                RunElementView(icon: "flame.fill", title: "Calories Burned:", value: "\(caloriesBurnedFormatted) kcal")
                
                RunElementView(icon: "figure.run", title: "Running Pace:", value: "\(runningPaceFormatted) min/km")
                
                RunElementView(icon: "speedometer", title: "Average Speed:", value: "\(averageSpeedFormatted) km/h")
                
                RunElementView(icon: "clock", title: "Time:", value: "\(timeFormatted) min")
                
                RunElementView(icon: "space", title: "Distance:", value: "\(distanceFormatted) km")
            }
            
            Button(action: {
                
                let priorResult = Result(caloriesBurned: caloriesBurnedFormatted,
                                         runningPace: runningPaceFormatted,
                                         averageSpeed: averageSpeedFormatted,
                                         time: timeFormatted,
                                         distance: distanceFormatted)
                
                history.append(priorResult)
                
            }, label: {
                Text("Save Run")
            })
            .buttonStyle(.bordered)
            
            
            
            Spacer()
            
            
        }
    }
}

struct TrackerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TrackerView(history: Binding.constant(historyForPreviews))
        }
    }
}

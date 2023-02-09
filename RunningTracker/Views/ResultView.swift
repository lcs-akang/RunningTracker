//
//  ResultView.swift
//  RunningTracker
//
//  Created by Aidan Kang on 2023-02-08.
//

import SwiftUI

struct ResultView: View {
    
    // MARK: Stored properties
    let priorResult: Result
    
    // MARK: Computed properties
    
    var body: some View {
        
            HStack() {
                VStack(spacing: 3) {
                    
                    HStack(spacing: 5) {
                        Image(systemName: "clock")
                        Text("Time")

                        Spacer()
                    }
                    
                    
                    HStack(spacing: 5) {
                        Image(systemName: "space")
                        Text("Distance")
                        Spacer()
                    }
                    
                    HStack {
                        Text("============")
                        Spacer()
                    }
                    
                    HStack(spacing: 5) {
                        Image(systemName: "flame.fill")
                        Text("Calories Burned")
                        Spacer()
                    }
                    
                    
                    HStack(spacing: 5) {
                        Image(systemName: "figure.run")
                        Text("Running Pace")
                        Spacer()
                    }
                    
                    
                    HStack(spacing: 5) {
                        Image(systemName: "speedometer")
                        Text("Average Speed")
                        Spacer()
                    }
                    
                }
                .font(.system(size: 15))
                .padding(.horizontal)
                
                VStack(spacing: 3) {
                    Text("\(priorResult.time) min")
                    Text("\(priorResult.distance) km")
                    
                    Text("========")
                    
                    Text("\(priorResult.caloriesBurned) kcal")
                    Text("\(priorResult.runningPace) min/km")
                    Text("\(priorResult.averageSpeed) km/h")
                }
                .font(.system(size: 15))
                .padding(.horizontal)
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(priorResult: resultForPreview)
    }
}

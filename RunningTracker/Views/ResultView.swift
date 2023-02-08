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
        
        HStack {
            VStack {
                
                HStack(spacing: 5) {
                    Image(systemName: "flame.fill")
                        .font(.system(size: 20))
                    Text("Calories Burned")
                        .font(.body.smallCaps())
                }
                
                HStack(spacing: 5) {
                    Image(systemName: "figure.run")
                        .font(.system(size: 20))
                    Text("Running Pace")
                        .font(.body.smallCaps())
                }
                
                HStack(spacing: 5) {
                    Image(systemName: "speedometer")
                        .font(.system(size: 20))
                    Text("Average Speed")
                        .font(.body.smallCaps())
                }
                
                HStack(spacing: 5) {
                    Image(systemName: "clock")
                        .font(.system(size: 20))
                    Text("Time")
                        .font(.body.smallCaps())
                }
                
                HStack(spacing: 5) {
                    Image(systemName: "space")
                        .font(.system(size: 20))
                    Text("Distance")
                        .font(.body.smallCaps())
                }
                
            }
        }
        
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(priorResult: resultForPreview)
    }
}

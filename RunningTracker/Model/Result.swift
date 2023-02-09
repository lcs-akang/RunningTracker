//
//  Result.swift
//  RunningTracker
//
//  Created by Aidan Kang on 2023-02-08.
//

import Foundation

struct Result: Identifiable {
    
    let id = UUID()
    let caloriesBurned: String
    let runningPace: String
    let averageSpeed: String
    let time: String
    let distance: String
}

var resultForPreview = Result(caloriesBurned: "315",
                              runningPace: "6.0",
                              averageSpeed: "10.0",
                              time: "30",
                              distance: "5.0")


var historyForPreviews = [resultForPreview]

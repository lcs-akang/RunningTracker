//
//  RunningTrackerApp.swift
//  RunningTracker
//
//  Created by Aidan Kang on 2023-02-04.
//

import SwiftUI

@main
struct RunningTrackerApp: App {
    
    // MARK: Stored properties
    
    @State var history: [Result] = []
    
    // MARK: Computed properties
    
    
    var body: some Scene {
        WindowGroup {
            TabView {
                TrackerView(history: $history)
                    .tabItem {
                        Image(systemName: "figure.run")
                        Text("Run")
                    }
                
                HistoryView(history: $history)
                    .tabItem {
                        Image(systemName: "clock.fill")
                        Text("History")
                    }
            }
        }
    }
}

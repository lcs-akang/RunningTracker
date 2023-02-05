//
//  TrackerView.swift
//  RunningTracker
//
//  Created by Aidan Kang on 2023-02-04.
//

import SwiftUI

struct TrackerView: View {
    var body: some View {
        VStack {
            Text("Tracker goes here soon")
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

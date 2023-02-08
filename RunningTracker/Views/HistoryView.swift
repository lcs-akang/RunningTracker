//
//  HistoryView.swift
//  RunningTracker
//
//  Created by Aidan Kang on 2023-02-08.
//

import SwiftUI

struct HistoryView: View {
    
    // MARK: Stored properties
    @Binding var history: [Result]
    
    // MARK: Computed properties
    
    var body: some View {
        VStack {
            Text("History")
                .font(.headline.smallCaps())
                .padding()

            List(history.reversed()) { somePriorResult in
                ResultView(priorResult: somePriorResult)
                }

            }
    }
}

//struct HistoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        HistoryView()
//    }
//}

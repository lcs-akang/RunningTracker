//
//  RunElementView.swift
//  RunningTracker
//
//  Created by Aidan Kang on 2023-02-09.
//

import SwiftUI

struct RunElementView: View {
    
    // MARK: Stored properties
    
    let icon: String
    let title: String
    let value: String
    
    // MARK: Computed properties
    var body: some View {
        
        HStack(spacing: 5) {
            Image(systemName: icon)
                .font(.system(size: 20))
            Text(title)
                .font(.body.smallCaps())
            Text(value)
            Spacer()
        }
        .padding(.horizontal)
        
    }
}

struct RunElementView_Previews: PreviewProvider {
    static var previews: some View {
        RunElementView(icon: "flame.fill", title: "Calories Burned:", value: "395 kcal")
    }
}

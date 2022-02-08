//
//  SwipeActionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 2/8/22.
//

import SwiftUI

struct SwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
    "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button("Archive") {
                        }
                        .tint(.green)
                        Button("Save") {
                        }
                        .tint(.blue)
                        Button("Delete") {
                        }
                        .tint(.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {
                        }
                        .tint(.yellow)
                    }
            }
        }
    }
}

struct SwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionsBootcamp()
    }
}

//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 2/2/22.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = "TestUser123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
//                 this will crash
//                Text(displayText!)
//                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data. User ID is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error, there is no User ID!"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error, there is no User ID!"
            return
        }
        // if successful the rest of the function will run
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data. User ID is: \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}

//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 2/8/22.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("TOGGLE FOCUS STATE") {
                usernameInFocus.toggle()
            }
        }
        .padding(40)
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}

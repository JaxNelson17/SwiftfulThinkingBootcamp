//
//  OnSubmitBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 2/8/22.
//

import SwiftUI

struct OnSubmitBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextField("Placeholder...", text: $text)
            .submitLabel(.route)
            .onSubmit {
                print("something to the console")
            }
    }
}

struct OnSubmitBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnSubmitBootcamp()
    }
}

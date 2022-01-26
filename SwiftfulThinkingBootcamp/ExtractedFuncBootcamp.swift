//
//  ExtractedFuncBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 1/26/22.
//

import SwiftUI

struct ExtractedFuncBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //Content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    //Will execute the code when the button is pressed
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFuncBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFuncBootcamp()
    }
}

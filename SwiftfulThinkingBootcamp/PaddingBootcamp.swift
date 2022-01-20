//
//  PaddingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 1/20/22.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("this is the description, of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}

/*
 Text("Hello, World!")
     .background(Color.yellow)
     //.padding()
     .padding(.all, 10)
     .padding(.leading, 20)
     .background(Color.blue)
 
 Text("Hello, World!")
     .font(.largeTitle)
     .fontWeight(.semibold)
     .frame(maxWidth: .infinity, alignment: .leading)
     //.background(Color.red)
     .padding(.leading, 20)
 */

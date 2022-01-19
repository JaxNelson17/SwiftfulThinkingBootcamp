//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 1/19/22.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .foregroundColor(.pink)
//            .stroke(Color.red)
//            .strokeBorder(Color.blue, lineWidth: 30)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 50)
            .frame(width: 300, height: 200)
        
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}

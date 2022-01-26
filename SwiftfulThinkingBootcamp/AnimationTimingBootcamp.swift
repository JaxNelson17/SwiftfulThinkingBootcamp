//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 1/26/22.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimatedd: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimatedd.toggle()
            }
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimatedd ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1.0))
                //.animation(Animation.linear(duration: timing))
            
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimatedd ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimatedd ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimatedd ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}

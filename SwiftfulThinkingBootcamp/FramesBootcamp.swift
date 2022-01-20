//
//  FramesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 1/20/22.
//

import SwiftUI

struct FramesBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
        
        //            .background(Color.green)
        //            .frame(maxWidth: .infinity, maxHeight: .infinity ,alignment: .center)
        //            .frame(width: 300, height: 300, alignment: .center)
        //            .background(Color.red)
    }
}

struct FramesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FramesBootcamp()
    }
}

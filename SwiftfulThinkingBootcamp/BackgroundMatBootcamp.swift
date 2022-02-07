//
//  BackgroundMatBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 2/7/22.
//

import SwiftUI

struct BackgroundMatBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
        }
        .ignoresSafeArea()
        .background(
            Image("jackblack")
        )
    }
}

struct BackgroundMatBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMatBootcamp()
    }
}

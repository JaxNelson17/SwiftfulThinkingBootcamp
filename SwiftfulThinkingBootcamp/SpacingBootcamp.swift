//
//  SpacingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 1/20/22.
//

import SwiftUI

struct SpacingBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            Spacer()
            Rectangle()
                .frame(height: 55)
        }
    }
}

struct SpacingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacingBootcamp()
    }
}

//HStack(spacing: 0) {
//
//    Spacer(minLength: 0)
//        .frame(height: 10)
//        .background(Color.orange)
//
//    Rectangle()
//        .frame(width: 50, height: 50)
//
//    Spacer()
//        .frame(height: 10)
//        .background(Color.orange)
//
//    Rectangle()
//        .fill(Color.red)
//        .frame(width: 50, height: 50)
//
//    Spacer()
//        .frame(height: 10)
//        .background(Color.orange)
//
//    Rectangle()
//        .fill(Color.green)
//        .frame(width: 50, height: 50)
//
//    Spacer(minLength: 0)
//        .frame(height: 10)
//        .background(Color.orange)
//}
//.background(Color.yellow)
//.padding(.horizontal, 200)
//.background(Color.blue)

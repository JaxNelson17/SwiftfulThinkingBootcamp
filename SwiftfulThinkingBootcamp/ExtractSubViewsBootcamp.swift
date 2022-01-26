//
//  ExtractSubViewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 1/26/22.
//

import SwiftUI

struct ExtractSubViewsBootcamp: View {
    var body: some View {
        ZStack {
            //Background Layer
            Color(#colorLiteral(red: 0.3, green: 0.9, blue: 1.0, alpha: 1)).ignoresSafeArea()
            
            //Content Layer
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Orange", count: 10, color: .orange)
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
}

struct ExtractSubViewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewsBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

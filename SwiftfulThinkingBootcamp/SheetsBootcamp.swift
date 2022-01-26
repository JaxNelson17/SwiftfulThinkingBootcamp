//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 1/26/22.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            //Background
            Color.green
                .ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
                .fullScreenCover(isPresented: $showSheet, content: {
                    //DO NOT ADD CONDITIONAL LOGIC
                    SecondScreen()
                })
//                .sheet(isPresented: $showSheet, content: {
            //    DO NOT ADD CONDITIONAL LOGIC
//                    SecondScreen()
//            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            //Background
            Color.red
                .ignoresSafeArea()
            
            Button(action: {
                presentaionMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        //SecondScreen()
        SheetsBootcamp()
    }
}

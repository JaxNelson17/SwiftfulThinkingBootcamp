//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 1/26/22.
//
//Sheets
//Animations
//Transitions

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            //Meathod 1 Sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            //Method 2 Transition
//            ZStack {
//            if showNewScreen {
//                NewScreen(showNewScreen: $showNewScreen)
//                    .padding(.top, 100)
//                    .transition(.move(edge: .bottom))
//                    .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
            //Method 3 Animation Offset
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentaionMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button(action: {
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
    }
}

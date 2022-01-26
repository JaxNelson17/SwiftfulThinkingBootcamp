//
//  TransistionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 1/26/22.
//

import SwiftUI

struct TransistionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack{
                Button("BUTTON") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
            RoundedRectangle(cornerRadius: 30)
                .frame(height: UIScreen.main.bounds.height * 0.5)
                .transition(.asymmetric(
                    insertion: .move(edge: .leading),
                    removal: AnyTransition.opacity.animation(.easeInOut)))
                .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransistionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransistionBootcamp()
    }
}

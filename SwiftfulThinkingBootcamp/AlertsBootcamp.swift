//
//  AlertsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 1/27/22.
//

import SwiftUI

struct AlertsBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("Button 1") {
                    alertType = .error
                    //alertTitle = "ERROR UPLOADING VIDEO"
                    //alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .success
                    //alertTitle = "Successfully uploaded video"
                    //alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
                
            }
            .alert(isPresented: $showAlert, content: {
                //Alert(title: Text("There was an error"))
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"))
            
        case .success:
            return Alert(title: Text("This was a success"), message: nil,
                         dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("ERROR"))
        }
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK")))
        
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("here we will describe the error"),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel())
    }
}

struct AlertsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertsBootcamp()
    }
}

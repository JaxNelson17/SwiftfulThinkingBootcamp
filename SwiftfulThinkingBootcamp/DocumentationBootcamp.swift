//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 2/1/22.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
    "apples", "oranges", "bananas"
    ]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    //  JAXSON - Working copy - things todo:
    /*
    1) Fix title
    2) Fix Alert
    */
    
    var body: some View {
        NavigationView { // START : NAV
            ZStack {
                // Background
                Color.red.ignoresSafeArea()
                
                // Foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(
                    trailing:
                        Button("ALERT", action: {
                            showAlert.toggle()
                        })
                )
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert")
            })
            }
        } // END: NAV
    }
    
    /// This is the foreground layer that holds a scroll view
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    // MARK: FUNCTIONS
    
    /// Gets an alert with a specified title
    ///
    ///This function creates and returns an alert immediatly. The alert will have a title based in the text parameter but it will NOT have a message.
    ///```
    ///getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    ///
    /// - Warning: There is no additional message in this alert
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with an title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}

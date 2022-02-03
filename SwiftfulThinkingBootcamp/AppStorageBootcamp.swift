//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 2/3/22.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @State var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Nick"
                currentUserName = name
                UserDefaults.standard.set(name, forKey: "name")
            }
        }
        .onAppear(perform: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}

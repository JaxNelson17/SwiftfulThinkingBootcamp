//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 2/1/22.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
    "Most Popular", "Most Recent", "Most Likes"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        Picker(
            selection: $selection,
            label: Text("Picker"),
            content: {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])

                }
            })
            .pickerStyle(.segmented)
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}

//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                }
//            })
//                .pickerStyle(.wheel)
//            //.background(Color.gray.opacity(0.3))
//        }

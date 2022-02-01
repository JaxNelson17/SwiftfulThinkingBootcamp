//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 2/1/22.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .accentColor(Color.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //GraphicalDatePickerStyle()
                    //WheelDatePickerStyle()
            )
        }
        //DatePicker("Select a Date", selection: $selectedDate)
//        DatePicker("Select a Date",
//                   selection: $selectedDate,
//                   displayedComponents: [.hourAndMinute, .date])
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}

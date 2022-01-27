//
//  ListsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jaxson Nelson on 1/27/22.
//

import SwiftUI

struct ListsBootcamp: View {
    
    @State var fruits: [String] = [
    "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
    "tomato", "potato", "carrot"]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                        .font(.headline)
                        .foregroundColor(.orange)
                
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
            }
            .accentColor(.green)
            //.listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        .tint(.red)
    }
    
    var addButton : some View {
        Button("Add" , action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

struct ListsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListsBootcamp()
    }
}

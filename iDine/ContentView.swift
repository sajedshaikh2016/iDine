//
//  ContentView.swift
//  iDine
//
//  Created by Sajed Shaikh on 19/11/22.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
//                            Text(item.name)
                            ItemRow(item: item)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
//            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

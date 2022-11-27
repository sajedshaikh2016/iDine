//
//  iDineApp.swift
//  iDine
//
//  Created by Sajed Shaikh on 19/11/22.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}

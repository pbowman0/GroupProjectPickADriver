//
//  GroupProjectPickADriverApp.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/3/21.
//

import SwiftUI

@main
struct GroupProjectPickADriverApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(names: DriverList())
        }
    }
}

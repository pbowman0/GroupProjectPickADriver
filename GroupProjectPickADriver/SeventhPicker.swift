//
//  SeventhPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
struct SeventhPicker: View {
    var body: some View {
        Text("\(studentNames7.randomElement() ?? "Error: Could not pick random element")")
    }
}

struct SeventhPicker_Previews: PreviewProvider {
    static var previews: some View {
        SeventhPicker()
    }
}

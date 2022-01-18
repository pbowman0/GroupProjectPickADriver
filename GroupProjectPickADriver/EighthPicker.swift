//
//  EighthPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
struct EighthPicker: View {
    var body: some View {
        Text("\(studentNames8.randomElement() ?? "Error: Could not pick random element")")
    }
}

struct EighthPicker_Previews: PreviewProvider {
    static var previews: some View {
        EighthPicker()
    }
}

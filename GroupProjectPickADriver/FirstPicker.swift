//
//  FirstPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
struct FirstPicker: View {
    var body: some View {
        Text("\(studentNames1.randomElement() ?? "Error: Could not pick random element")")
    }
}

struct FirstPicker_Previews: PreviewProvider {
    static var previews: some View {
        FirstPicker()
    }
}

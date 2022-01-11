//
//  SecondPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
struct SecondPicker: View {
    var body: some View {
        Text("\(studentNames2.randomElement() ?? "Error: Could not pick random element")")
    }
}

struct SecondPicker_Previews: PreviewProvider {
    static var previews: some View {
        SecondPicker()
    }
}

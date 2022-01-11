//
//  ThirdPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
struct ThirdPicker: View {
    var body: some View {
        Text("\(studentNames3.randomElement() ?? "Error: Could not pick random element")")
    }
}

struct ThirdPicker_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPicker()
    }
}

//
//  FourthPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
struct FourthPicker: View {
    var body: some View {
        Text("\(studentNames4.randomElement() ?? "Error: Could not pick random element")")
    }
}

struct FourthPicker_Previews: PreviewProvider {
    static var previews: some View {
        FourthPicker()
    }
}

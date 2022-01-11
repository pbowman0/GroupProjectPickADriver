//
//  SixthPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI

struct SixthPicker: View {
    var body: some View {
        Text("\(studentNames6.randomElement() ?? "Error: Could not pick random element")")
    }
}

struct SixthPicker_Previews: PreviewProvider {
    static var previews: some View {
        SixthPicker()
    }
}

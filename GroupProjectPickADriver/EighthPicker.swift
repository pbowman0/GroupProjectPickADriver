//
//  EighthPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
let randomName8 = studentNames8.randomElement()!
struct EighthPicker: View {
    var body: some View {
        Text("\(randomName8)!")
    }
}

struct EighthPicker_Previews: PreviewProvider {
    static var previews: some View {
        EighthPicker()
    }
}

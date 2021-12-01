//
//  SeventhPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
let randomName7 = studentNames7.randomElement()!
struct SeventhPicker: View {
    var body: some View {
        Text("\(randomName7)!")
    }
}

struct SeventhPicker_Previews: PreviewProvider {
    static var previews: some View {
        SeventhPicker()
    }
}

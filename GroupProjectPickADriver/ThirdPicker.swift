//
//  ThirdPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
let randomName3 = studentNames3.randomElement()!
struct ThirdPicker: View {
    var body: some View {
        Text("\(randomName3)!")
    }
}

struct ThirdPicker_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPicker()
    }
}

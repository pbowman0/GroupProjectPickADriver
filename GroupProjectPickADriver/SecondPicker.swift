//
//  SecondPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
let randomName2 = studentNames2.randomElement()!
struct SecondPicker: View {
    var body: some View {
        Text("\(randomName2)!")
    }
}

struct SecondPicker_Previews: PreviewProvider {
    static var previews: some View {
        SecondPicker()
    }
}

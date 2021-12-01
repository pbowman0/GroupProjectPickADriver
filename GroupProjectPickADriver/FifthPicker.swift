//
//  FifthPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
let randomName5 = studentNames5.randomElement()!
struct FifthPicker: View {
    var body: some View {
        Text("\(randomName5)!")
    }
}

struct FifthPicker_Previews: PreviewProvider {
    static var previews: some View {
        FifthPicker()
    }
}

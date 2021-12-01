//
//  FirstPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
let randomName1 = studentNames1.randomElement()!
struct FirstPicker: View {
    var body: some View {
        Text("\(randomName1)!")
    }
}

struct FirstPicker_Previews: PreviewProvider {
    static var previews: some View {
        FirstPicker()
    }
}

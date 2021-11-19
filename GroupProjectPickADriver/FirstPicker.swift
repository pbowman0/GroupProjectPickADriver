//
//  FirstPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
let randomName = things.randomElement()!
struct FirstPicker: View {
    var body: some View {
        Text("\(randomName)")
    }
}

struct FirstPicker_Previews: PreviewProvider {
    static var previews: some View {
        FirstPicker()
    }
}

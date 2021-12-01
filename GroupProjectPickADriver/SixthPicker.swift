//
//  SixthPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI

struct SixthPicker: View {
    let randomName6 = studentNames6.randomElement()!
    var body: some View {
        Text("\(randomName6)!")
    }
}

struct SixthPicker_Previews: PreviewProvider {
    static var previews: some View {
        SixthPicker()
    }
}

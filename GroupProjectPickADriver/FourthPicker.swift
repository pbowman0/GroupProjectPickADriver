//
//  FourthPicker.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/11/21.
//

import SwiftUI
let randomName4 = studentNames4.randomElement()!
struct FourthPicker: View {
    var body: some View {
        Text("\(randomName4)!")
    }
}

struct FourthPicker_Previews: PreviewProvider {
    static var previews: some View {
        FourthPicker()
    }
}

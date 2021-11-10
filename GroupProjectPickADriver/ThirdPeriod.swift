//
//  ThirdPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames3 = [""]
struct ThirdPeriod: View {
    @State private var studentName = ""
    @State private var isEditing = false
    var body: some View {
        List {
        Section(header: Text("Class Three")) {
            TextField("Please enter student name", text: $studentName) { isEditing in
                self.isEditing = isEditing
            }
            onCommit: {
                studentNames3.append(studentName)
            }
                 }
        }
    }
}

struct ThirdPeriod_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPeriod()
    }
}

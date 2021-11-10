//
//  FifthPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames5 = [""]
struct FifthPeriod: View {
    @State private var studentName = ""
    @State private var isEditing = false
    var body: some View {
        Section(header: Text("Class Five")) {
            TextField("Please enter student name", text: $studentName) { isEditing in
                self.isEditing = isEditing
            }
            onCommit: {
                studentNames5.append(studentName)
            }
                 }
    }
}

struct FifthPeriod_Previews: PreviewProvider {
    static var previews: some View {
        FifthPeriod()
    }
}

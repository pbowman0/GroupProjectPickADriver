//
//  EighthPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames8 = [""]
struct EighthPeriod: View {
    @State private var studentName = ""
    @State private var isEditing = false
    var body: some View {
        Section(header: Text("Class Eight")) {
            TextField("Please enter student name", text: $studentName) { isEditing in
                self.isEditing = isEditing
            }
            onCommit: {
                studentNames8.append(studentName)
            }
                 }
    }
}

struct EighthPeriod_Previews: PreviewProvider {
    static var previews: some View {
        EighthPeriod()
    }
}

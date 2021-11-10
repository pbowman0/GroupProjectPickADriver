//
//  SeventhPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames7 = [""]
struct SeventhPeriod: View {
    @State private var studentName = ""
    @State private var isEditing = false
    var body: some View {
        Section(header: Text("Class Seven")) {
            TextField("Please enter student name", text: $studentName) { isEditing in
                self.isEditing = isEditing
            }
            onCommit: {
                studentNames7.append(studentName)
            }
                 }
    }
}

struct SeventhPeriod_Previews: PreviewProvider {
    static var previews: some View {
        SeventhPeriod()
    }
}

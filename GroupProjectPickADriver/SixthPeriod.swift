//
//  SixthPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames6 = [""]
struct SixthPeriod: View {
    @State private var studentName = ""
    @State private var isEditing = false
    var body: some View {
        List {
        Section(header: Text("Class Six")) {
            TextField("Please enter student name", text: $studentName) { isEditing in
                self.isEditing = isEditing
            }
            onCommit: {
                studentNames6.append(studentName)
            }
                 }
        }
    }
}

struct SixthPeriod_Previews: PreviewProvider {
    static var previews: some View {
        SixthPeriod()
    }
}

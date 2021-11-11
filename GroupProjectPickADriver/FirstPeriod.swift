//
//  FirstPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames1 = [""]
struct FirstPeriod: View {
    @State private var studentName = ""
    @State private var isEditing = false
    var body: some View {
        List {
            Section(header: Text("Class One")) {
                TextField("Please enter student name", text: $studentName) { isEditing in
                    self.isEditing = isEditing
                }
                onCommit: {
                    studentNames1.append(studentName)
                }
            }
        }
    }
}

struct FirstPeriod_Previews: PreviewProvider {
    static var previews: some View {
        FirstPeriod()
    }
}


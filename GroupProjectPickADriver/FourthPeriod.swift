//
//  FourthPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames4 = [""]
struct FourthPeriod: View {
    @State private var studentName = ""
    @State private var isEditing = false
    var body: some View {
        List {
        Section(header: Text("Class Four")) {
            TextField("Please enter student name", text: $studentName) { isEditing in
                self.isEditing = isEditing
            }
            onCommit: {
                studentNames4.append(studentName)
            }
                 }
        }
    }
}

struct FourthPeriod_Previews: PreviewProvider {
    static var previews: some View {
        FourthPeriod()
    }
}

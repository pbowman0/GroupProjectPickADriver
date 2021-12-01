//
//  FirstEditor.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/18/21.
//

import SwiftUI

struct FirstEditor: View {
    @State private var studentName = ""
    @State private var isEditing = false
    var body: some View {
        TextField("Please enter student name", text: $studentName) { isEditing in
            self.isEditing = isEditing
        }
        onCommit: {
            studentNames1.append(studentName)
        }
        .padding()
    }
}

struct FirstEditor_Previews: PreviewProvider {
    static var previews: some View {
        FirstEditor()
    }
}

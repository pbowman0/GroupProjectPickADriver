//
//  Eighth Editor.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/22/21.
//

import SwiftUI

struct EighthEditor: View {
    @State private var studentName8 = ""
    @State private var isEditing = false
    var body: some View {
        TextField("Please enter student name", text: $studentName8) { isEditing in
            self.isEditing = isEditing
        }
        onCommit: {
            studentNames8.append(studentName8)
        }
        .padding()
    }
}

struct EighthEditor_Previews: PreviewProvider {
    static var previews: some View {
        EighthEditor()
    }
}

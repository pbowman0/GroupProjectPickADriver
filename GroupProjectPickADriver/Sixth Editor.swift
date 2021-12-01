//
//  Sixth Editor.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/22/21.
//

import SwiftUI

struct SixthEditor: View {
    @State private var studentName6 = ""
    @State private var isEditing = false
    var body: some View {
        TextField("Please enter student name", text: $studentName6) { isEditing in
            self.isEditing = isEditing
        }
        onCommit: {
            studentNames6.append(studentName6)
        }
        .padding()
    }
}

struct SixthEditor_Previews: PreviewProvider {
    static var previews: some View {
        SixthEditor()
    }
}

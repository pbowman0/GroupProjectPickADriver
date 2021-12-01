//
//  Seventh Editor.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/22/21.
//

import SwiftUI

struct SeventhEditor: View {
    @State private var studentName7 = ""
    @State private var isEditing = false
    var body: some View {
        TextField("Please enter student name", text: $studentName7) { isEditing in
            self.isEditing = isEditing
        }
        onCommit: {
            studentNames7.append(studentName7)
        }
        .padding()
    }
}

struct SeventhEditor_Previews: PreviewProvider {
    static var previews: some View {
        SeventhEditor()
    }
}

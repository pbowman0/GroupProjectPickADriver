//
//  Fifth Editor.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/22/21.
//

import SwiftUI

struct FifthEditor: View {
    @State private var studentName5 = ""
    @State private var isEditing = false
    var body: some View {
        TextField("Please enter student name", text: $studentName5) { isEditing in
            self.isEditing = isEditing
        }
        onCommit: {
            studentNames5.append(studentName5)
        }
        .padding()
    }
}

struct FifthEditor_Previews: PreviewProvider {
    static var previews: some View {
        FifthEditor()
    }
}

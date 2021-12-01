//
//  ThirdEditor.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/22/21.
//

import SwiftUI

struct ThirdEditor: View {
    @State private var studentName3 = ""
    @State private var isEditing = false
    var body: some View {
        TextField("Please enter student name", text: $studentName3) { isEditing in
            self.isEditing = isEditing
        }
        onCommit: {
            studentNames3.append(studentName3)
        }
        .padding()
    }
}


struct ThirdEditor_Previews: PreviewProvider {
    static var previews: some View {
        ThirdEditor()
    }
}

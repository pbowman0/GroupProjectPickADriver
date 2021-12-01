//
//  SecondEditor.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/22/21.
//

import SwiftUI

struct SecondEditor: View {
    @State private var studentName2 = ""
    @State private var isEditing = false
    var body: some View {
        TextField("Please enter student name", text: $studentName2) { isEditing in
            self.isEditing = isEditing
        }
        onCommit: {
            studentNames2.append(studentName2)
        }
        .padding()
    }
}


struct SecondEditor_Previews: PreviewProvider {
    static var previews: some View {
        SecondEditor()
    }
}

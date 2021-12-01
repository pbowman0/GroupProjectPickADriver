//
//  FourthEditor.swift
//  GroupProjectPickADriver
//
//  Created by Student on 12/1/21.
//

import SwiftUI

struct Fourth_Editor: View {
    @State private var studentName4 = ""
    @State private var isEditing = false
    var body: some View {
        TextField("Please enter student name", text: $studentName4) { isEditing in
            self.isEditing = isEditing
        }
        onCommit: {
            studentNames4.append(studentName4)
        }
        .padding()
    }
}

struct Fourth_Editor_Previews: PreviewProvider {
    static var previews: some View {
        Fourth_Editor()
    }
}

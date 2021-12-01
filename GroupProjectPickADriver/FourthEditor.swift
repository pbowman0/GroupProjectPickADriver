//
//  Fourth Editor.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/22/21.
//

import SwiftUI

struct FourthEditor: View {
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

struct FourthEditor_Previews: PreviewProvider {
    static var previews: some View {
        FourthEditor()
    }
}

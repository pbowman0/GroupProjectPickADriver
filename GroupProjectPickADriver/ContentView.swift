//
//  ContentView.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/3/21.
//

import SwiftUI
var studentNames1 = [""]
var studentNames2 = [""]
var studentNames3 = [""]
var studentNames4 = [""]
var studentNames5 = [""]
var studentNames6 = [""]
var studentNames7 = [""]
var studentNames8 = [""]
struct ContentView: View {
    @State private var isEditing = false
    @State private var studentName = ""
    var body: some View {
        Form {
            Section(header: Text("Class One")) {
                TextField("Please enter student name", text: $studentName) { isEditing in
                    self.isEditing = isEditing
                }
                onCommit: {
                    studentNames1.append(studentName)
                }
                     }
            Section(header: Text("Class Two")) {
                TextField("Please enter student name", text: $studentName) { isEditing in
                    self.isEditing = isEditing
                }
                onCommit: {
                    studentNames2.append(studentName)
                }
                     }
            Section(header: Text("Class Three")) {
                TextField("Please enter student name", text: $studentName) { isEditing in
                    self.isEditing = isEditing
                }
                onCommit: {
                    studentNames3.append(studentName)
                }
                     }
            Section(header: Text("Class Four")) {
                TextField("Please enter student name", text: $studentName) { isEditing in
                    self.isEditing = isEditing
                }
                onCommit: {
                    studentNames4.append(studentName)
                }
                     }
            Section(header: Text("Class Five")) {
                TextField("Please enter student name", text: $studentName) { isEditing in
                    self.isEditing = isEditing
                }
                onCommit: {
                    studentNames5.append(studentName)
                }
                     }
            Section(header: Text("Class Six")) {
                TextField("Please enter student name", text: $studentName) { isEditing in
                    self.isEditing = isEditing
                }
                onCommit: {
                    studentNames6.append(studentName)
                }
                     }
            Section(header: Text("Class Seven")) {
                TextField("Please enter student name", text: $studentName) { isEditing in
                    self.isEditing = isEditing
                }
                onCommit: {
                    studentNames7.append(studentName)
                }
                     }
            Section(header: Text("Class Eight")) {
                TextField("Please enter student name", text: $studentName) { isEditing in
                    self.isEditing = isEditing
                }
                onCommit: {
                    studentNames8.append(studentName)
                }
                     }
        }
        
    }
}
//

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

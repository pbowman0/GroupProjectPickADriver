//
//  FirstPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames1 = ["Colin", "Nathan", "Timothy", "Paige", "Peter"]
    struct FirstPeriod: View {
    @ObservedObject var names: DriverList
    @State private var studentName = ""
    @State private var isEditing = false
    var selected = false
    var body: some View {
        List {
            ForEach(studentNames1, id: \.self) { studentName in Text(studentName)
            }
            .onMove(perform: { indices, newOffset in
                studentNames1.move(fromOffsets: indices, toOffset: newOffset)
            })
            .onDelete(perform: { indexSet in
                studentNames1.remove(atOffsets: indexSet)
            })
            Section {
                NavigationLink(destination: FirstEditor(),
                               label: {
                                Text("New Student")
                               })
                    .padding()
            }
            Section {
                NavigationLink(destination: FirstPicker(),
                               label: {
                                Text("CHOOSE")
                               })
                    .padding()
            }
            .navigationBarTitle("Class One", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
  /*      Text(studentName)
            .opacity(selected ? 0.2 : 1)
            .onTapGesture {
                if selected == false {
                    var selected = true
                }
                if selected == true {
                    var selected = false
                }
            } */
    }
}


struct FirstPeriod_Previews: PreviewProvider {
    static var previews: some View {
        FirstPeriod(names: DriverList())
    }
}


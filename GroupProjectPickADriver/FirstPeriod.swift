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
        .onTapGesture {
            if selected == false {
                var selected = true
            }
            else {
                var selected = false
            }
        }
        //        if selected == true {
        //           Text.color = UIColor(white: 0, alpha: 0.25)
        //    }
    }
}


struct FirstPeriod_Previews: PreviewProvider {
    static var previews: some View {
        FirstPeriod(names: DriverList())
    }
}


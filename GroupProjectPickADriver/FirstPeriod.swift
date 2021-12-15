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
    @State private var faded = false
    var body: some View {
        List {
            ForEach(studentNames1, id: \.self) { studentName in Text(studentName)
                .opacity(faded ? 0.2 : 1)
                .onTapGesture {
                    faded.toggle()
                }
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
        /*
         .opacity(faded ? 0.2 : 1)
         .onTapGesture {
             faded.toggle()
         }
         */
    }
}


struct FirstPeriod_Previews: PreviewProvider {
    static var previews: some View {
        FirstPeriod(names: DriverList())
    }
}


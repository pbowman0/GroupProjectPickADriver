//
//  SeventhPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames7 = ["Colin", "Nathan", "Timothy", "Paige", "Peter"]
struct SeventhPeriod: View {
    @ObservedObject var names: DriverList
    @State private var studentName = ""
    @State private var isEditing = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(studentNames7, id: \.self) { thing in Text(thing)
                }
                .onMove(perform: { indices, newOffset in
                    studentNames7.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    studentNames7.remove(atOffsets: indexSet)
                })
                Section {
                    NavigationLink(destination: SeventhEditor(),
                                   label: {
                                       Text("Edit")
                                   })
                        .padding()
                    }
                Section {
                    NavigationLink(destination: SeventhPicker(),
                                   label: {
                                    Text("CHOOSE")
                                   })
                }
            }
            .navigationBarTitle("Class Seven", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct SeventhPeriod_Previews: PreviewProvider {
    static var previews: some View {
        SeventhPeriod(names: DriverList())
    }
}

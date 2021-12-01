//
//  EighthPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames8 = ["Colin", "Nathan", "Timothy", "Paige", "Peter"]
struct EighthPeriod: View {
    @ObservedObject var names: DriverList
    @State private var studentName = ""
    @State private var isEditing = false
    var body: some View {
        NavigationView {
            List {
                ForEach(studentNames8, id: \.self) { thing in Text(thing)
                }
                .onMove(perform: { indices, newOffset in
                    studentNames8.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    studentNames8.remove(atOffsets: indexSet)
                })
                Section {
                    NavigationLink(destination: EighthEditor(),
                                   label: {
                                    Text("Edit")
                                   })
                        .padding()
                }
                Section {
                    NavigationLink(destination: EighthPicker(),
                                   label: {
                                    Text("CHOOSE")
                                   })
                }
            }
            .navigationBarTitle("Class Eight", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct EighthPeriod_Previews: PreviewProvider {
    static var previews: some View {
        EighthPeriod(names: DriverList())
    }
}

//
//  FifthPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames5 = ["Colin", "Nathan", "Timothy", "Paige", "Peter"]
struct FifthPeriod: View {
    @ObservedObject var names: DriverList
    @State private var studentName = ""
    @State private var isEditing = false
    var body: some View {
        NavigationView {
            List {
                ForEach(studentNames5, id: \.self) { thing in Text(thing)
                }
                .onMove(perform: { indices, newOffset in
                    studentNames5.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    studentNames5.remove(atOffsets: indexSet)
                })
                Section {
                    NavigationLink(destination: FifthEditor(),
                                   label: {
                                    Text("Edit")
                                   })
                        .padding()
                }
                Section {
                    NavigationLink(destination: FifthPicker(),
                                   label: {
                                    Text("CHOOSE")
                                   })
                }
            }
            .navigationBarTitle("Class Five", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct FifthPeriod_Previews: PreviewProvider {
    static var previews: some View {
        FifthPeriod(names: DriverList())
    }
}

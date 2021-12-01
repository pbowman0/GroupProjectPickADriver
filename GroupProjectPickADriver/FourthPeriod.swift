//
//  FourthPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames4 = ["Colin", "Nathan", "Timothy", "Paige", "Peter"]
struct FourthPeriod: View {
    @ObservedObject var names: DriverList
    @State private var studentName = ""
    @State private var isEditing = false
    var body: some View {
        List {
            ForEach(studentNames4, id: \.self) { studentName in Text(studentName)
            }
            .onMove(perform: { indices, newOffset in
                studentNames4.move(fromOffsets: indices, toOffset: newOffset)
            })
            .onDelete(perform: { indexSet in
                studentNames4.remove(atOffsets: indexSet)
            })
            Section {
                NavigationLink(destination: Fourth_Editor(),
                               label: {
                                Text("Edit")
                               })
                    .padding()
            }
            Section {
                NavigationLink(destination: FourthPicker(),
                               label: {
                                Text("CHOOSE")
                               })
            }
        }
        .navigationBarTitle("Class Four", displayMode: .inline)
        .navigationBarItems(leading: EditButton())
    }
}

struct FourthPeriod_Previews: PreviewProvider {
    static var previews: some View {
        FourthPeriod(names: DriverList())
    }
}

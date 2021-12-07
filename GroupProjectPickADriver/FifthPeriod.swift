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
    var selected = false
    var body: some View {
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
                                Text("New Student")
                               })
                    .padding()
            }
            Section {
                NavigationLink(destination: FifthPicker(),
                               label: {
                                Text("CHOOSE")
                               })
            }
            .navigationBarTitle("Class Five", displayMode: .inline)
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
    }
}

struct FifthPeriod_Previews: PreviewProvider {
    static var previews: some View {
        FifthPeriod(names: DriverList())
    }
}

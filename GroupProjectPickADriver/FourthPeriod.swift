//
//  FourthPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames4 = [""]
struct FourthPeriod: View {
    @ObservedObject var names: DriverList
    @State private var studentName = ""
    @State private var isEditing = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(things, id: \.self) { thing in Text(thing)
                }
                .onMove(perform: { indices, newOffset in
                    things.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    things.remove(atOffsets: indexSet)
                })
                Section {
                    NavigationLink(destination: FirstPicker(),
                                   label: {
                                    Text("CHOOSE")
                                   })
                }
            }
            .navigationBarTitle("Class One", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct FourthPeriod_Previews: PreviewProvider {
    static var previews: some View {
        FourthPeriod(names: DriverList())
    }
}

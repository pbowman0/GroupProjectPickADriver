//
//  ThirdPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames3 = ["Colin", "Nathan", "Timothy", "Paige", "Peter"]
struct ThirdPeriod: View {
    @ObservedObject var names: DriverList
    @State private var studentName = ""
    @State private var isEditing = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(studentNames3, id: \.self) { thing in Text(thing)
                }
                .onMove(perform: { indices, newOffset in
                    studentNames3.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    studentNames3.remove(atOffsets: indexSet)
                })
                Section {
                    NavigationLink(destination:ThirdEditor(),
                                   label: {
                                    Text("Edit")
                                   })
                        .padding()
                }
                Section {
                    NavigationLink(destination: ThirdPicker(),
                                   label: {
                                    Text("CHOOSE")
                                   })
                }
                
            }
            .navigationBarTitle("Class Three", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct ThirdPeriod_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPeriod(names: DriverList())
    }
}

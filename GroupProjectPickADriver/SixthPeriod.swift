//
//  SixthPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames6 = ["Colin", "Nathan", "Timothy", "Paige", "Peter"]
struct SixthPeriod: View {
    @ObservedObject var names: DriverList
    @State private var studentName = ""
    @State private var isEditing = false
    
    var body: some View {
       
            List {
                ForEach(studentNames6, id: \.self) { thing in Text(thing)
                }
                .onMove(perform: { indices, newOffset in
                    studentNames6.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    studentNames6.remove(atOffsets: indexSet)
                })
            }
                Section {
                    NavigationLink(destination: SixthEditor(),
                                   label: {
                                       Text("Edit")
                                   })
                        .padding()
                    }
                Section {
                    NavigationLink(destination: SixthPicker(),
                                   label: {
                                    Text("CHOOSE")
                                   })
                        .padding()
                }
            
            .navigationBarTitle("Class Six", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
    
}

struct SixthPeriod_Previews: PreviewProvider {
    static var previews: some View {
        SixthPeriod(names: DriverList())
    }
}

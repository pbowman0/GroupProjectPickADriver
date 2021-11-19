//
//  FirstPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames1 = [""]
var things = ["Colin", "Nathan", "Timothy", "Paige", "Peter"]
struct FirstPeriod: View {
    /*@State private var studentNames = [Driver(period: 1, name: ""), Driver(period: 1, name: ""), Driver(period: 1, name: "")]
     @State private var isEditing = false
     var body: some View {
     List {
     Section(header: Text("Class One")) {
     TextField("Please enter student name", text: $studentNames) { isEditing in
     self.isEditing = isEditing
     }
     onCommit: {
     studentNames1.append(studentNames)
     }
     }
     }
     } */
    @ObservedObject var  names: DriverList
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


struct FirstPeriod_Previews: PreviewProvider {
    static var previews: some View {
        FirstPeriod(names: DriverList())
    }
}


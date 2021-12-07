//
//  SecondPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames2 = ["Colin", "Nathan", "Timothy", "Paige", "Peter"]
struct SecondPeriod: View {
    @ObservedObject var names: DriverList
    @State private var studentName = ""
    @State private var isEditing = false
    var selected = false
    var body: some View {
        List {
            ForEach(studentNames2, id: \.self) { studentName in Text(studentName)
            }
            .onMove(perform: { indices, newOffset in
                studentNames2.move(fromOffsets: indices, toOffset: newOffset)
            })
            .onDelete(perform: { indexSet in
                studentNames2.remove(atOffsets: indexSet)
            })
            Section {
                NavigationLink(destination: SecondEditor(),
                               label: {
                                Text("New Student")
                               })
                    .padding()
            }
            Section {
                NavigationLink(destination: SecondPicker(),
                               label: {
                                Text("CHOOSE")
                               })
            }
            
            .navigationBarTitle("Class Two", displayMode: .inline)
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

struct SecondPeriod_Previews: PreviewProvider {
    static var previews: some View {
        SecondPeriod(names: DriverList())
    }
}

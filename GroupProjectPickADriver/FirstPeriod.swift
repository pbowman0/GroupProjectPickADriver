//
//  FirstPeriod.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/9/21.
//

import SwiftUI
var studentNames1 = [""]
struct FirstPeriod: View {
    @State private var studentNames = [Driver(period: 1, name: ""), Driver(period: 1, name: ""), Driver(period: 1, name: "")]
    @State private var isEditing = false
    class DriverOne: ObservableObject {
        @Published var names : [Driver] {
            didSet {
                let encoder = JSONEncoder ()
                if let encoded = try? encoder.encoded(names) {
                    UserDefaults.standard.set(encoded, forKey: "data")
                }
            }
        }
        init() {
        if let names = UserDefaults.standard.data(forKey: "data") {
        let decoder = JSONDecoder()
        if let decoded = try? decoder.decode([Driver].self, from: names) {
            self.names = decoded
            return
            } }
            names = [] }
    }
   // var body: some View {
        //List {
        //    Section(header: Text("Class One")) {
        //        TextField("Please enter student name", text: $studentNames) { isEditing in
        //            self.isEditing = isEditing
        //        }
        //        onCommit: {
        //            studentNames1.append(studentNames)
        //        }
        //    }
       // }
  //  }
}

struct FirstPeriod_Previews: PreviewProvider {
    static var previews: some View {
        FirstPeriod()
    }
}


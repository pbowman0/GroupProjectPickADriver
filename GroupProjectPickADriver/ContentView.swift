//
//  ContentView.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/3/21.
//

import SwiftUI
struct ContentView: View {
    @ObservedObject var  names: DriverList
    @State private var isEditing = false
    @State private var studentName = ""
    var body: some View {
        NavigationView{
            List{
                NavigationLink(
                    destination: FirstPeriod(names: DriverList()),
                    label: {
                        Text("Enter Class One")
                    })
                NavigationLink(
                    destination: SecondPeriod(names: DriverList()),
                    label: {
                        Text("Enter Class Two")
                    })
                NavigationLink(
                    destination: ThirdPeriod(names: DriverList()),
                    label: {
                        Text("Enter Class Three")
                    })
                NavigationLink(
                    destination: FourthPeriod(names: DriverList()),
                    label: {
                        Text("Enter Class Four")
                    })
                NavigationLink(
                    destination: FifthPeriod(names: DriverList()),
                    label: {
                        Text("Enter Class Five")
                    })
                NavigationLink(
                    destination: SixthPeriod(names: DriverList()),
                    label: {
                        Text("Enter Class Six")
                    })
                NavigationLink(
                    destination: SeventhPeriod(names: DriverList()),
                    label: {
                        Text("Enter Class Seven")
                    })
                NavigationLink(
                    destination: EighthPeriod(names: DriverList()),
                    label: {
                        Text("Enter Class Eight")
                    })
            }
            .navigationTitle("Pick a Driver")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(names: DriverList())
    }
}

struct Driver: Identifiable, Codable {
var id = UUID()
var period = Int()
var name = String()
}

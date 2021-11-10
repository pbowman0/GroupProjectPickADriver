//
//  ContentView.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/3/21.
//

import SwiftUI








struct ContentView: View {
    @State private var isEditing = false
    @State private var studentName = ""
    var body: some View {
        NavigationView{
            List{
                NavigationLink(
                    destination: FirstPeriod(),
                    label: {
                        Text("Enter Class One")
                    })
                NavigationLink(
                    destination: SecondPeriod(),
                    label: {
                        Text("Enter Class Two")
                    })
                NavigationLink(
                    destination: ThirdPeriod(),
                    label: {
                        Text("Enter Class Three")
                    })
                NavigationLink(
                    destination: FourthPeriod(),
                    label: {
                        Text("Enter Class Four")
                    })
                NavigationLink(
                    destination: FifthPeriod(),
                    label: {
                        Text("Enter Class Five")
                    })
                NavigationLink(
                    destination: SixthPeriod(),
                    label: {
                        Text("Enter Class Six")
                    })
                NavigationLink(
                    destination: SeventhPeriod(),
                    label: {
                        Text("Enter Class Seven")
                    })
                NavigationLink(
                    destination: EighthPeriod(),
                    label: {
                        Text("Enter Class Eight")
                    })
            }
        }
        
    }
}
//

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

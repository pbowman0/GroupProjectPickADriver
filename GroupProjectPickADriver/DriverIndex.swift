//
//  DriverIndex.swift
//  GroupProjectPickADriver
//
//  Created by Student on 11/16/21.
//
class DriverList: ObservableObject {
    @Published var names : [Driver] {
        didSet {
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(names) {
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

import Foundation

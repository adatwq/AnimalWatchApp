//
//  AnimalModel.swift
//  AnimalApp
//
//  Created by shahadmufleh on 13/02/2024.
//

import Foundation

struct AnimalModel: Codable, Hashable {
    var name: String
    var emoji: String
}

//Date

extension Date {
    func toString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        formatter.locale = Locale(identifier: "ja-JP")
        return formatter.string(from: self)
    }
}


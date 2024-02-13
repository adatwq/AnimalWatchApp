//
//  MessageRow.swift
//  AnimalApp
//
//  Created by shahadmufleh on 13/02/2024.
//

import SwiftUI

struct MessageRow: View {
    let animalModel: AnimalModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(animalModel.emoji + animalModel.name)
                .font(.body)
                .padding(.vertical, 4.0)
            Text(Date().toString())
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
}

struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        MessageRow(animalModel: AnimalModel(name: "Cat", emoji: "🐱"))
    }
}

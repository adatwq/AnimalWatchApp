//
//  ContentView.swift
//  AnimalApp Watch App
//
//  Created by shahadmufleh on 13/02/2024.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    let animals = ["Cat", "Puppy", "Unicorn"]
    let emojiAnimals = ["🐱", "🐶", "🦄"]
    
    var viewModel = AnimalListViewModel()
    
    var body: some View {
        List(0 ..< animals.count) { index in
            Button {
            
                self.sendMessageData(index: index)
                
                print(animals[index])
               
            } label: {
                HStack {
                    Text(self.emojiAnimals[index])
                        .font(.title)
                        .padding()
                    Text(self.animals[index])
                }
            }
        }
        .listStyle(CarouselListStyle())
        .navigationBarTitle(Text("Animal List"))
    }
    
    private func sendMessage(index: Int) {
        let messages: [String: Any] =
            ["animal": animals[index],
             "emoji": emojiAnimals[index]]
        self.viewModel.session.sendMessage(messages, replyHandler: nil) { (error) in
            print(error.localizedDescription)
        }
    }
    
    private func sendMessageData(index: Int) {
        let animal = AnimalModel(name: animals[index], emoji: emojiAnimals[index])
        guard let data = try? JSONEncoder().encode(animal) else {
            return
        }
        self.viewModel.session.sendMessageData(data, replyHandler: nil) { (error) in
            print(error.localizedDescription)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//send messages back to the iphone

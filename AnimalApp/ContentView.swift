//
//  ContentView.swift
//  AnimalApp
//
//  Created by shahadmufleh on 13/02/2024.
//

import SwiftUI
struct ContentView: View {
    @ObservedObject var viewModel = MessageListViewModel()
    @State private var isReachable = "NO"
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {
                        self.isReachable = self.viewModel.session.isReachable ? "YES": "NO"
                    }) {
                        Text("Check")
                    }
                    .padding(.leading, 16.0)
                    Spacer()
                    Text("isReachable")
                        .font(.headline)
                        .padding()
                    Text(self.isReachable)
                        .foregroundColor(.gray)
                        .font(.subheadline)
                        .padding()
                }
                .background(Color.init(.systemGray5))
                List {
            ForEach(self.viewModel.messagesData, id: \.self) { animal in
                        MessageRow(animalModel: animal)
                    }
                }
                .listStyle(PlainListStyle())
                Spacer()
            }
            .navigationTitle("Receiver")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

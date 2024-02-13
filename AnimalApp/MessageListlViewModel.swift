//
//  AnimalViewModel.swift
//  AnimalApp
//
//  Created by shahadmufleh on 13/02/2024.
//



import SwiftUI
import WatchConnectivity

final class MessageListViewModel: NSObject, ObservableObject {
    @Published var messages: [String] = []
    @Published var messagesData: [AnimalModel] = []
    
    var session: WCSession
    
    init(session: WCSession = .default) {
        self.session = session
        super.init()
        self.session.delegate = self
        session.activate()
    }
}

extension MessageListViewModel: WCSessionDelegate {
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        if let error = error {
            print(error.localizedDescription)
        } else {
            print("The session has completed activation.")
        }
    }
    func sessionDidBecomeInactive(_ session: WCSession) {
    }
    func sessionDidDeactivate(_ session: WCSession) {
    }
   
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        
     
        
        
    }
    
  
    func session(_ session: WCSession, didReceiveMessageData messageData: Data) {
        
      
        
        
    }
}

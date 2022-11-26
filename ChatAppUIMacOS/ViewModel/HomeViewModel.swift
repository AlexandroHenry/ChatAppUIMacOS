//
//  HomeViewModel.swift
//  ChatAppUIMacOS
//
//  Created by Seungchul Ha on 2022/11/26.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var selectedTab = "All Chats"
    
    @Published var msgs: [RecentMessage] = recentMsgs
    
    // Selected Recent Tab...
    @Published var selectedrecentMsg: String? = recentMsgs.first?.id
    
    // Search...
    @Published var search = ""
    
    // Message...
    @Published var message = ""
    
    // Expanded View
    @Published var isExpanded = false
    
    // Piced Expanded Tab...
    @Published var pickedTab = "Media"
    
    // Send Message....
    
    func sendMessage(user: RecentMessage) {
        
        if message != "" {
            
            let index = msgs.firstIndex { (currentUser) -> Bool in
                return currentUser.id == user.id
            } ?? -1
            
            if index != -1 {
                msgs[index].allMsgs.append(Message(message: message, myMessage: true))
                message = ""
            }
        }
    }
}

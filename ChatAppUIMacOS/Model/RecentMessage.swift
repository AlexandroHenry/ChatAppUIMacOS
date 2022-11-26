//
//  RecentMessage.swift
//  ChatAppUIMacOS
//
//  Created by Seungchul Ha on 2022/11/26.
//

import SwiftUI

// Recent Message Model...
struct RecentMessage: Identifiable {
    
    var id = UUID().uuidString
    var lastMsg: String
    var lastMsgTime: String
    var pendingMsgs: String
    var userName: String
    var userImage: String
    var allMsgs: [Message]
}

var recentMsgs: [RecentMessage] = [
    RecentMessage(lastMsg: "Apple Tech", lastMsgTime: "15:00", pendingMsgs: "9", userName: "이지금", userImage: "p1", allMsgs: Eachmsg.shuffled()),
    RecentMessage(lastMsg: "New Album Is Going To Be Released!!!!", lastMsgTime: "14:32", pendingMsgs: "2", userName: "한지현", userImage: "p2", allMsgs: Eachmsg.shuffled()),
    RecentMessage(lastMsg: "Hi this is Steve Rogers !!!", lastMsgTime: "14:35", pendingMsgs: "2", userName: "Beyonce", userImage: "p3", allMsgs: Eachmsg.shuffled()),
    RecentMessage(lastMsg: "New Tutorial From KavSoft!!!", lastMsgTime: "10:00", pendingMsgs: "9", userName: "Sarah Hyland", userImage: "p4", allMsgs: Eachmsg.shuffled()),
    RecentMessage(lastMsg: "New SwiftUI API is Released!!!", lastMsgTime: "19:49", pendingMsgs: "2", userName: "Hailey Baldwin", userImage: "p5", allMsgs: Eachmsg.shuffled()),
    RecentMessage(lastMsg: "Founder of Microsoft!!!", lastMsgTime: "20:35", pendingMsgs: "2", userName: "Yujin Ahn", userImage: "p6", allMsgs: Eachmsg.shuffled()),
    RecentMessage(lastMsg: "Founder of Amazon!!!", lastMsgTime: "10:35", pendingMsgs: "2", userName: "Bo Young Park", userImage: "p7", allMsgs: Eachmsg.shuffled()),
    RecentMessage(lastMsg: "Released New Iphone 15!!!", lastMsgTime: "6:35", pendingMsgs: "2", userName: "Boa Cho", userImage: "p8", allMsgs: Eachmsg.shuffled()),
]

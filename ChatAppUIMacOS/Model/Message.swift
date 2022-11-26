//
//  Message.swift
//  ChatAppUIMacOS
//
//  Created by Seungchul Ha on 2022/11/26.
//

import SwiftUI

struct Message: Identifiable, Equatable {
    
    var id = UUID().uuidString
    var message: String
    var myMessage: Bool
}

var Eachmsg = [
    Message(message: "New Album Is Going To Be Released!!!!", myMessage: false),
    Message(message: "Discover the innovative world of Apple and show everything iPhone, iPad, Apple Watch, Mac, and Apple TV, plus explore accessories, entertainment!!!", myMessage: false),
    Message(message: "Amazon.in: Online Shopping India - Buy mobiles, laptops, cameras, books, watches, apparel, shoes and e-Gift Cards", myMessage: false),
    Message(message: "SwiftUI is an innovative, exceptionally simple way to build user interfaces accross all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs", myMessage: true),
    Message(message: "At Microsoft our mission and values are to help people and businesses throughout the world realize their full potential.!!!!", myMessage: false)
]

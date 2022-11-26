//
//  ChatAppUIMacOSApp.swift
//  ChatAppUIMacOS
//
//  Created by Seungchul Ha on 2022/11/26.
//

import SwiftUI

@main
struct ChatAppUIMacOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        // Hiding Title Bar...
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

// Hiding TextField Focus Ring...
extension NSTextField {
    open override var focusRingType: NSFocusRingType {
        get{.none}
        set{}
    }
}


//
//  Images_2023App.swift
//  Images-2023
//
//  Created by Owen Hildreth on 3/15/23.
//

import SwiftUI

@main
struct Images_2023App: App {
    @StateObject var appController = AppController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandGroup(replacing: CommandGroupPlacement.newItem) {
                Button("Import File") {
                    let panel = NSOpenPanel()
                    panel.allowsMultipleSelection = true
                    panel.canChooseDirectories = true
                    
                    if panel.runModal() == .OK {
                        appController.importFromUrls(panel.urls)
                    }
                }
                .keyboardShortcut("i", modifiers: .command)
            }
        }
    }
}

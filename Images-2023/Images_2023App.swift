//
//  Images_2023App.swift
//  Images-2023
//
//  Created by Owen Hildreth on 3/15/23.
//

import SwiftUI

@main
struct Images_2023App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

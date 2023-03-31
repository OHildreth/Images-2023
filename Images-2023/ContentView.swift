//
//  ContentView.swift
//  Images-2023
//
//  Created by Owen Hildreth on 3/15/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        HStack {
            FileHierarchyView()
            Text("Other Junk")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

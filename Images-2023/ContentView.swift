//
//  ContentView.swift
//  Images-2023
//
//  Created by Owen Hildreth on 3/15/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @ObservedObject var appController: AppController
    
    var body: some View {
        HStack {
            FileHierarchyView(treeNodes: appController.treeNodes, selectedTreeNode: $appController.selectionManager.selectedTreeNodes)
            Text("Other Junk")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

//
//  App.swift
//  Images-2023
//
//  Created by Owen Hildreth on 4/3/23.
//

import Foundation

class AppController: ObservableObject {
    var treeNodes: [TreeNode<Photo>] = [TreeNode<Photo>(name: "root", isRoot: true)]
    var selectionManager = SelectionManager()
    
    func importFromUrls(_ urls: [URL]) {
        var fileImporter = FileImporter()
        fileImporter.canChooseDirectories = true
        fileImporter.allowsMultipleSelection = true
        
//        fileImporter.importURLs(urls, into: <#T##TreeNode<Photo>#>)
    }
}
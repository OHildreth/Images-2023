//
//  App.swift
//  Images-2023
//
//  Created by Owen Hildreth on 4/3/23.
//

import Foundation
import AppKit

class AppController: ObservableObject {
    var treeNodes: [TreeNode<Photo>] = [TreeNode<Photo>(name: "root", isRoot: true)]
    var selectionManager = SelectionManager()
    init() {
        selectionManager.delegate = self
    }
    
    func importFromUrls(_ urls: [URL]) {
        var fileImporter = FileImporter()
        fileImporter.canChooseDirectories = true
        fileImporter.allowsMultipleSelection = true
        
        do {
            let targetNode = try treeNodeDestination()
            fileImporter.importURLs(urls, into: targetNode)
        } catch AppControllerErrors.multipleTreeNodesSelectedDuringImport {
            __NSBeep()
        } catch AppControllerErrors.noRootTreeNodeToImportInto {
            fatalError()
        } catch {
            print(error)
        }
    }
    
    func treeNodeDestination() throws -> TreeNode<Photo> {
        let currentSelection = selectionManager.selectedTreeNodes
        
        if currentSelection.count == 0 {
            guard let rootNode = treeNodes.first else {
                throw AppControllerErrors.noRootTreeNodeToImportInto
            }
            return rootNode
        } else if currentSelection.count == 1 {
            return treeNodes.first!
        } else {
            throw AppControllerErrors.multipleTreeNodesSelectedDuringImport
        }
    }
    
    enum AppControllerErrors: Error {
        case multipleTreeNodesSelectedDuringImport
        case noRootTreeNodeToImportInto
    }
}


extension AppController: SelectionManagerDelegate {
    func treeNodesForIDs(_ treeNodeIDs: Set<TreeNode<Photo>.ID>) -> Set<TreeNode<Photo>> {
        
    }
    
    
    
}

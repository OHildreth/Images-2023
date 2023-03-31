//
//  FileImporter.swift
//  Images-2023
//
//  Created by Owen Hildreth on 3/31/23.
//

import Foundation

struct FileImporter {
    var canChooseDirectories = false
    
    var allowsMultipleSelection = false
    
    var allowedExtenions: [String] = ["jpg", "png", "JPG", "tiff"]
    
    func importURLs(_ urls: [URL], into treeNode: TreeNode<Photo>) {
        // TODO: Handle Directories
        
        for url in urls {
            let urlExtension = url.pathExtension
            
            if allowedExtenions.contains(urlExtension) {
                // TODO: Handle Photosize
                let photo = Photo(url: url, importDate: Date.now)
                treeNode.content.append(photo)
            }
        }
    }
    
}

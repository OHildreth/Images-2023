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
        for url in urls {
            let isDir = url.hasDirectoryPath
            if isDir {
                do {
                    let contents = try FileManager.default.contentsOfDirectory(atPath: url.path)
                    
                    var folderUrls: [URL] = []
                    for item in contents {
                        if let itemUrl = URL(string: item) {
                            folderUrls.append(itemUrl)
                        }
                    }
                    
                    let newTreeNode = TreeNode<Photo>(name: url.lastPathComponent)
                    importURLs(folderUrls, into: newTreeNode)
                    
                    if treeNode.children != nil {
                        treeNode.children?.append(newTreeNode)
                    } else {
                        treeNode.children = [newTreeNode]
                    }
                    
                } catch {
                    print("\(error)")
                }
                
            } else {
                let urlExtension = url.pathExtension
                
                if allowedExtenions.contains(urlExtension) {
                    // TODO: Handle Photosize
                    let photo = Photo(url: url, importDate: Date.now)
                    treeNode.content.append(photo)
                }
            }
            
            
        }
    }
    
}

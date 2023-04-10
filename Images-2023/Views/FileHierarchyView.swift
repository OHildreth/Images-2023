//
//  FileHierarchyView.swift
//  Images-2023
//
//  Created by Owen Hildreth on 3/27/23.
//

import SwiftUI

struct FileHierarchyView: View {
    var treeNodes: [TreeNode<Photo>]
    
    let exampleData = [
        TreeNode<Photo>(name: "Image 1",
                        children: [
                            TreeNode(name: "Image 1.1"),
                            TreeNode(name: "Image 1.2"),
                            TreeNode(name: "Image 1.3")
        ]),
        TreeNode<Photo>(name: "Image 2",
                        children: [
                            TreeNode(name: "Image 2.1"),
                            TreeNode(name: "Image 2.2"),
                            TreeNode(name: "Image 3.3")
        ])
    ]
    
    @Binding var selectedTreeNode: Set<TreeNode<Photo>.ID>
    
    var body: some View {
        NavigationView {
            List(treeNodes, id: \.id, children: \.children, selection: $selectedTreeNode) {children in
                Text(children.name)
            }
                .listStyle(.sidebar)
                .navigationTitle("Images")
        }
        
    }
}

struct FileHierarchyView_Previews: PreviewProvider {
    static var previews: some View {
        FileHierarchyView()
    }
}

//
//  SelectionManager.swift
//  Images-2023
//
//  Created by Owen Hildreth on 4/3/23.
//

import Foundation

class SelectionManager: ObservableObject {
    var delegate: SelectionManagerDelegate? = nil
    @Published var selectedTreeNodes = Set<TreeNode<Photo>>()
    @Published var selectedPhotos = Set<Photo>()
    @Published var selectedTreeNodeIDs = Set<TreeNode<Photo>.ID>() {
        didSet{
            selectedTreeNodes = delegate?.treeNodesForIDs(selectedTreeNodeIDs) ?? []
        }
    }
}

protocol SelectionManagerDelegate {
    func treeNodesForIDs (_ treeNodeIDs: Set<TreeNode<Photo>.ID>) -> Set<TreeNode<Photo>>
}

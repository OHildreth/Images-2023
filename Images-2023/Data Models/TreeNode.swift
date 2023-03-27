//
//  TreeNode.swift
//  Images-2023
//
//  Created by Owen Hildreth on 3/15/23.
//

import Foundation

class TreeNode<Value>: Identifiable, Hashable {
    static func == (lhs: TreeNode<Value>, rhs: TreeNode<Value>) -> Bool {
        lhs.id == rhs.id    
    }
    
    
    
    var content: [Value] = []
    
    var name: String
    
    var children: [TreeNode]? = nil
    
    init(name: String, children: [TreeNode]? = nil) {
        self.name = name
        self.children = children
    }
}



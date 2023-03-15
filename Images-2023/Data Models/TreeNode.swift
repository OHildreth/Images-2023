//
//  TreeNode.swift
//  Images-2023
//
//  Created by Owen Hildreth on 3/15/23.
//

import Foundation

class TreeNode<Value> {
    var content: [Value] = []
    
    var name: String
    
    var children: [TreeNode]? = nil
    
    init(name: String, children: [TreeNode]? = nil) {
        self.name = name
        self.children = children
    }
}

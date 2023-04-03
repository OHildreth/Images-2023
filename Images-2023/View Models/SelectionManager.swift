//
//  SelectionManager.swift
//  Images-2023
//
//  Created by Owen Hildreth on 4/3/23.
//

import Foundation

class SelectionManager: ObservableObject {
    @Published var selectedTreeNodes = Set<TreeNode<Photo>>()
    @Published var selectedPhotos = Set<Photo>()
}

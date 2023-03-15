//
//  photo.swift
//  Images-2023
//
//  Created by Owen Hildreth on 3/15/23.
//

import Foundation

class Photo {
    var name: String
    
    let url: URL
    
    var photo_size: PhotoSize?
    
    var importDate: Date = .now
    
    init(url: URL, photo_size: PhotoSize? = nil, importDate: Date) {
        let newURL = url.deletingPathExtension()
        self.name = newURL.lastPathComponent
        self.url = url
        self.photo_size = photo_size
        self.importDate = importDate
    }
}

struct PhotoSize {
    var width: Int
    var height: Int
}

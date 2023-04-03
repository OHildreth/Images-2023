//
//  photo.swift
//  Images-2023
//
//  Created by Owen Hildreth on 3/15/23.
//

import Foundation

class Photo: Hashable, Identifiable {
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
    
    static func == (lhs: Photo, rhs: Photo) -> Bool {
        lhs.id == rhs.id
    }
 
    public func hash(into hasher: inout Hasher) {
        return hasher.combine(id)
    }
}

struct PhotoSize {
    var width: Int
    var height: Int
}

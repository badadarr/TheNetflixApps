//
//  Movie.swift
//  The Netflix Apps (iOS)
//
//  Created by badar on 23/12/20.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}

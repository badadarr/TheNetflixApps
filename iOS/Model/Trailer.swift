//
//  Trailer.swift
//  The Netflix Apps (iOS)
//
//  Created by badar on 26/12/20.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}

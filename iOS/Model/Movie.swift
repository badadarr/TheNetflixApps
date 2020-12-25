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
    
    // MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    // Personalization
    var currentEpisode: CurrentEpisodeInfo?
    
    
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    
    var episodes: [Episode]? 
    
    var promotionHeadline: String?
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons { 
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        
        return ""
    }
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisodeInfo.description
        }
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

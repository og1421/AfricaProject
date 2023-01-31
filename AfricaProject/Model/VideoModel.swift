//
//  VideoModel.swift
//  AfricaProject
//
//  Created by Orlando Moraes Martins on 31/01/23.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    static let allVideos: [Video] = Bundle.main.decode("videos.json")
    static let example = allVideos[0]
    
    //Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}

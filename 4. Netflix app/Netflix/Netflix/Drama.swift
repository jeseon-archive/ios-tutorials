//
//  Drama.swift
//  Netflix
//
//  Created by lee on 7/25/24.
//

import Foundation

struct DramaCollection: Codable{
    var bigBanner: String
    var dramas: [Drama]
    
    enum CodingKeys: String, CodingKey
    {
        case bigBanner = "BIG_BANNER"
        case dramas = "DRAMAS"
    }
    
}

struct Drama: Codable{
    var categoryTitle: String
    var posters: [String]
    
    enum CodingKeys: String, CodingKey
    {
        case categoryTitle = "CATEGORY_TITLE"
        case posters = "POSTERS"
    }
    
}

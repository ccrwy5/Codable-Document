//
//  Entities.swift
//  Decodable Document
//
//  Created by Chris Rehagen on 4/16/20.
//  Copyright © 2020 Chris Rehagen. All rights reserved.
//

import Foundation

struct Entities: Codable {
    var type: String
    var label: String?
    var properties: Properties?
    var content: Content?
    var source: Source?

    
    enum CodingKeys: String, CodingKey {
        case type
        case label
        case properties
        case content
        case source

    }
}

struct Properties: Codable {
    
    var size: Int?
    var width: String?
    var height: String?
    
    enum CodingKeys: String, CodingKey {
        case size
        case width
        case height
    }
}

struct Content: Codable {
    var contentType: String
    var contentEncoding: String
    var data: String
    
    enum CodingKeys: String, CodingKey {
        case contentType = "content-type"
        case contentEncoding = "content-encoding"
        case data

    }
}

struct Source: Codable {
    var url: String

    enum CodingKeys: String, CodingKey {
        case url
    }
}

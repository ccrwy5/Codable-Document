//
//  Metadata.swift
//  Decodable Document
//
//  Created by Chris Rehagen on 4/16/20.
//  Copyright © 2020 Chris Rehagen. All rights reserved.
//

import Foundation

struct Metadata: Codable {
    var topic: String
    var field: String
    
    enum CodingKeys: String, CodingKey {
        case topic
        case field
    }
}



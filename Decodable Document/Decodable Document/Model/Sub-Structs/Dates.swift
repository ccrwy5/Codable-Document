//
//  Dates.swift
//  Decodable Document
//
//  Created by Chris Rehagen on 4/16/20.
//  Copyright © 2020 Chris Rehagen. All rights reserved.
//

import Foundation

struct Dates: Codable {
    var created: String
    var updated: String
    
    enum CodingKeys: String, CodingKey {
        case created
        case updated
    }
    

}

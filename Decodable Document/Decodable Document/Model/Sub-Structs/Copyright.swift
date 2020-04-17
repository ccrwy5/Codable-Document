//
//  copyright.swift
//  Decodable Document
//
//  Created by Chris Rehagen on 4/16/20.
//  Copyright © 2020 Chris Rehagen. All rights reserved.
//

import Foundation

struct Copyright: Codable {
    var owner: String
    var startYear: Int
    var endYear: Int
    var license: String
    
    enum CodingKeys: String, CodingKey {
        case owner
        case startYear = "start-year"
        case endYear = "end-year"
        case license
    }
}

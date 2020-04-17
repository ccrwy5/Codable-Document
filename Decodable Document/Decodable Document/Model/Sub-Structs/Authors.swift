//
//  Author.swift
//  Decodable Document
//
//  Created by Chris Rehagen on 4/16/20.
//  Copyright © 2020 Chris Rehagen. All rights reserved.
//

import Foundation

struct Authors: Codable {
    var name: String
    var contribution: String
    var contacts: [Contact]
    
    enum CodingKeys: String, CodingKey {
        case name
        case contribution
        case contacts
    }
}

struct Contact: Codable {
    var method: String
    var label: String
    var address: String?
    var number: String?
    
    enum CodingKeys: String, CodingKey {
        case method
        case label
        case address
        case number
    }
}

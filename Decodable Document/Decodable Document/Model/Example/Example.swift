//
//  CustomStringConvertible.swift
//  Decodable Document
//
//  Created by Chris Rehagen on 4/15/20.
//  Copyright © 2020 Chris Rehagen. All rights reserved.
//

import UIKit

class Example: Decodable, CustomStringConvertible {
    var title: String
    var weight: Double
    var count: Int
    
    public var description: String {
        let info = "title: \(title), weight: \(weight), count: \(count)"
        return info
    }
}

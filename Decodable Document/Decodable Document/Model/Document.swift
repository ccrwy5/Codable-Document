//
//  Document.swift
//  Decodable Document
//
//  Created by Chris Rehagen on 4/15/20.
//  Copyright © 2020 Chris Rehagen. All rights reserved.
//

import Foundation

struct Document: Decodable, CustomStringConvertible {

        
    var uuid: String
    var dates: Dates
    var title: String
    var summary: String
    var metadata: Metadata
    var authors: [Authors]
    var copyright: Copyright
    var entities: [Entities]
    
    enum CodingKeys: String, CodingKey {
        case uuid
        case dates
        case title
        case summary
        case metadata
        case authors
        case copyright
        case entities
    }
        var description: String {
            let data = """
            Uuid: \(uuid)
            \n\nDates: \n
            Date Created: \(dates.created) \n
            Date Updated: \(dates.updated) \n\n
            Title: \(title) \n\n\(summary) \n\n
            Metadata: \nTopic: \(metadata.topic) \n
            Field: \(metadata.field) \n\n
            Contacts:\n\n
            Name: \(authors[0].name)\n\n
            Contribution: \(authors[1].contribution)\n\n
            Contacts: \(authors[0].contacts[0]), \(authors[1].contacts[1])\n\n
            Copyright:\n
            Owner: \(copyright.owner)\n
            Start Year: \(copyright.startYear)\n
            End Year: \(copyright.endYear)\n
            Licesne: \(copyright.license)\n\n
            Entities:\nType: \(entities[0].type)\n
            Label: \(String(describing: entities[0].label!) )\n
            Size: \(String(describing: entities[0].properties!.size))\n
            Content: \n Content-type: \(String(describing: entities[0].content!.contentType))\n
            Content-encoding: \(String(describing: entities[0].content!.contentEncoding))\n
            Data: \(String(describing: entities[0].content!.data))\n\n
            Type: \(entities[1].type)\nContent: \n Content-type: \(String(describing: entities[1].content!.contentType))\n
            Content-encoding: \(String(describing: entities[1].content!.contentEncoding))\n
            Data: \(String(describing: entities[1].content!.data))\n\n
            Type: \(entities[2].type)\n
            Label: \(String(describing: entities[2].label!) )\n
            Width: \(String(describing: entities[2].properties!.width))\n
            Source: \(String(describing: entities[2].source!.url))\n\n
            Type: \(entities[3].type)\n
            Label: \(String(describing: entities[3].label!) )\n
            Height: \(String(describing: entities[3].properties!.height))\n
            Source: \(String(describing: entities[3].source!.url))\n
            """
                   return data
        }
    }





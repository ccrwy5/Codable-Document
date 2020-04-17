//
//  ViewController.swift
//  Decodable Document
//
//  Created by Chris Rehagen on 4/15/20.
//  Copyright © 2020 Chris Rehagen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   let jsonFileName = "document1"
    @IBOutlet weak var documentTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
//        print(formatter3.string(from: today))

        
        var jsonData = Data()
        let fileURL = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
        
        do {
            jsonData = try Data(contentsOf: fileURL!)

        } catch {
            print(error)
        }
        
        do {
            let document = try JSONDecoder().decode(Document.self, from: jsonData)
            // CustomStringConvertible is used to get a string representing the object
            // through a .description property.
            // https://developer.apple.com/documentation/swift/customstringconvertible
            print(document)
            
            documentTextView.text = """
            Title: \(document.title)
            Description: \(document.summary)
            UUID: \(document.uuid)\n
            
            Created: \(document.dates.created)
            Updated: \(document.dates.updated)\n
            
            Metadata:
            \tTopic: \(document.metadata.topic)
            \tField: \(document.metadata.field)\n
            
            Authors:
            \tName: \(document.authors[0].name)
            \tContribution: \(document.authors[0].contribution)
            \tContacts:
            \t\t\(document.authors[0].contacts[0].label) \(document.authors[0].contacts[0].method): \(String(describing: document.authors[0].contacts[0].address!))
            \t\t\(document.authors[0].contacts[1].label) \(document.authors[0].contacts[1].method): \(String(describing: document.authors[0].contacts[1].address!))
            \t\t\(document.authors[0].contacts[2].label) \(document.authors[0].contacts[2].method): \(String(describing: document.authors[0].contacts[2].number!))
            
            \tName: \(document.authors[1].name)
            \tContribution: \(document.authors[1].contribution)
            \tContacts:
            \t\t\(document.authors[1].contacts[0].label) \(document.authors[1].contacts[0].method): \(String(describing: document.authors[1].contacts[0].address!))
            \t\t\(document.authors[1].contacts[1].label) \(document.authors[1].contacts[1].method): \(String(describing: document.authors[1].contacts[1].number!))

            Copyright Information:
            \tOwner:\(document.copyright.owner)
            \tStart-Year:\(document.copyright.startYear)
            \tEnd-Year:\(document.copyright.endYear)
            \tLicense:\(document.copyright.license)
            
            Entities:
            \t1. Type: \(document.entities[0].type)
            \t\tLabel: \(String(describing: document.entities[0].label!))
            \t\tProperties:
            \t\t\tSize: \(String(describing: document.entities[0].properties!.size!))
            \t\tContent:
            \t\t\t\(String(describing: document.entities[0].content!.contentType))
            \t\t\t\(String(describing: document.entities[0].content!.contentEncoding))
            \t\t\t\(String(describing: document.entities[0].content!.data))
            
            \t2. Type: \(document.entities[1].type)
            \t\tContent:
            \t\t\t\(String(describing: document.entities[1].content!.contentType))
            \t\t\t\(String(describing: document.entities[1].content!.contentEncoding))
            \t\t\t\(String(describing: document.entities[1].content!.data))
            
            \t3. Type: \(document.entities[2].type)
            \t\tLabel: \(String(describing: document.entities[2].label!))
            \t\tProperties:
            \t\t\tSize: \(String(describing: document.entities[2].properties!.width!))
            \t\tSource:
            \t\t\tURL: \(String(describing: document.entities[2].source!.url))
            
            \t4. Type: \(document.entities[3].type)
            \t\tLabel: \(String(describing: document.entities[3].label!))
            \t\tProperties:
            \t\t\tSize: \(String(describing: document.entities[3].properties!.height!))
            \t\tSource:
            \t\t\tURL: \(String(describing: document.entities[3].source!.url))

            """
            
            
            
            //print(document.uuid)
            
        } catch {
            print(error)
        }
    }
    



}


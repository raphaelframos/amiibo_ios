//
//  Amiibo.swift
//  amiibo_ios
//
//  Created by Raphael Ferreira Ramos on 19/04/21.
//

import Foundation
import SwiftyJSON

struct Amiibo : Codable {
    
    var amiiboSeries = ""
    var character = ""
    var gameSeries = ""
    var head = ""
    var image = ""
    var name = ""
    var tail = ""
    var type = ""
    var release = Dictionary<String, String>()
    
    init(json: JSON) {
        if let name = json["name"].string {
            self.name = name
        }
        
        if let image = json["image"].string {
            self.image = image
        }
        
        if let gameSeries = json["gameSeries"].string {
            self.gameSeries = gameSeries
        }
        
        if let amiiboSeries = json["amiiboSeries"].string {
            self.amiiboSeries = amiiboSeries
        }
    }
    
}

//
//  Currency.swift
//  Valuta
//
//  Created by Natalia Miller on 24/02/2017.
//  Copyright © 2017 Natalia Miller. All rights reserved.
//

import Foundation
import ObjectMapper

struct Currency: Mappable {
    var description: String?
    var id: String?
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        description    <- map["description"]
        id             <- map["id"]
    }
    

}

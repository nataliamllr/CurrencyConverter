//
//  HTTPClient.swift
//  Valuta
//
//  Created by Natalia Miller on 24/02/2017.
//  Copyright © 2017 Natalia Miller. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class HTTPClient {
    
    static func getCurrencies(completion: @escaping ([Currency]) -> Void) {
        
        let headers: HTTPHeaders = [
            "X-Mashape-Key": "jPrHxL1JAdmshVEpNO7MEIzunOdop1tlnPyjsnRFXjTo6ZjR8N",
            "Accept": "application/json"
        ]
        
        let url = "https://currencyconverter.p.mashape.com/availablecurrencies"
        
        Alamofire.request(url, headers: headers).responseArray { (response: DataResponse<[Currency]>) in
            
            if let resultArray = response.result.value {
                completion(resultArray)
                print(resultArray)
            }
        }
        
    }
    
    static func convert(from: String, to: String) {
        
    }
    
}

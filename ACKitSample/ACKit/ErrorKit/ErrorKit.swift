//
//  ErrorKit.swift
//  ACKitSample
//
//  Created by Agus Cahyono on 09/10/17.
//  Copyright © 2017 Agus Cahyono. All rights reserved.
//

import Foundation
import ObjectMapper

/***
 * ErrorKit for mapping error message fro API
 * Adjust to your JSON model
 ***/

struct ErrorKit: Mappable {
    
    var statusCode: Int?
    var errorCode: Int?
    var errorMessage: [String]?
    var joinErrorMessage: String {
        guard let errorMessages = errorMessage else {
            return ""
        }
        return errorMessages.joined(separator: " ")
    }
    
    init() {}
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        statusCode      <- map["status_code"]
        errorCode       <- map["data.errors.code"]
        errorMessage    <- map["data.errors.messages"]
    }
    
    
}

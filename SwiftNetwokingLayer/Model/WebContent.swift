//
//  WebContent.swift
//  SwiftNetwokingLayer
//
//  Created by Marcelo on 16/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class WebContent {
    var name : String!
    var activity : String!
    
//
//    init() {
//        self.name = String()
//        self.activity = String()
//    }
//
//    init(name: String, activity: String) {
//        self.name = name
//        self.activity = activity
//    }
    
    init(dictionary: JSONDictionary) {
        
        guard let name = dictionary["name"] as? String,
        let activity = dictionary["activity"] as? String else {
            return
        }
        // all ok
        self.name = name
        self.activity = activity
    }
    
}


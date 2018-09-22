//
//  WebContent.swift
//  SwiftNetwokingLayer
//
//  Created by Marcelo on 16/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class WebContent {
    var sources = [Source]()
    var status = String()
    
    init(dictionary: NSDictionary) {
        
        guard let sourcesAux = dictionary["sources"] as? [NSDictionary],
        let status = dictionary["status"] as? String else {
            print("GOT OUTTA HERE     ###############################")
            return
        }
        // all ok
        self.status = status
        for dic in sourcesAux {
            print("----- dic: \(dic)")
            sources.append(Source(dictionary: dic))
        }
    }
    
}


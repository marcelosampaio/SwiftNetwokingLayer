//
//  WebService.swift
//  SwiftNetwokingLayer
//
//  Created by Marcelo on 16/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

private var url = URL(string: "https://myapi.vapor.cloud/myapi")

typealias JSONDictionary = [String:Any]

class WebService {
    func loadWebServiceData(completion: @escaping ([WebContent]) -> ()) {
        URLSession.shared.dataTask(with: url!) {
            data, response, error in
            if let data = data {
                let json = try! JSONSerialization.jsonObject(with: data, options: [])
                let dics = json as! [JSONDictionary]
                
                DispatchQueue.main.async {
                    completion(dics.compactMap(WebContent.init))
                }
            }
        }.resume()
    }
}

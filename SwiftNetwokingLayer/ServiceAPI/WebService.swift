//
//  WebService.swift
//  SwiftNetwokingLayer
//
//  Created by Marcelo on 16/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

private var url = URL(string: "https://newsapi.org/v1/sources?language=en")
class WebService {
    func loadWebServiceData(completion: @escaping (WebContent) -> ()) {
        URLSession.shared.dataTask(with: url!) {
            data, response, error in
            if let data = data {
                let json = try! JSONSerialization.jsonObject(with: data, options: [])
                let dataDic : NSDictionary = json as! NSDictionary
                DispatchQueue.main.async {
                    completion(WebContent(dictionary: dataDic))
                }
            }
        }.resume()
    }
}

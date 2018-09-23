//
//  SourcesViewModel.swift
//  SwiftNetwokingLayer
//
//  Created by Marcelo on 23/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class SourcesViewModel {
    var sources : [SourceViewModel] = [SourceViewModel]()

    func populateSources(_ sources: [Source]) {
        self.sources = sources.map(SourceViewModel.init)
    }
    
//    init(_ sources: [Source]) {
//        self.sources = sources.map(SourceViewModel.init)
//    }
    
}

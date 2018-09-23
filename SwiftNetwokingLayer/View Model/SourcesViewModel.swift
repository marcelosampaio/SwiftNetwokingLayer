//
//  SourcesViewModel.swift
//  SwiftNetwokingLayer
//
//  Created by Marcelo on 22/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation

class SourcesViewModel {
    var sources : [SourceViewModel] = [SourceViewModel]()
    
    init(_ sources: [Source]) {
        self.sources = sources.map(SourceViewModel.init)
    }
}


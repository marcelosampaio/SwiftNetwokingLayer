//
//  SourcesDataSource.swift
//  SwiftNetwokingLayer
//
//  Created by Marcelo on 24/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import Foundation
import UIKit

class SourcesDataSource<Cell: UITableViewCell, ViewModel> : NSObject, UITableViewDataSource {
    
    private var cellIdentifier : String!
    private var items : [ViewModel]!
    var configureCell : (Cell, ViewModel) -> ()
    init(cellIdentifier: String, items: [ViewModel], configureCell: @escaping (Cell, ViewModel) -> ()) {
        self.cellIdentifier = cellIdentifier
        self.items = items
        self.configureCell = configureCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}

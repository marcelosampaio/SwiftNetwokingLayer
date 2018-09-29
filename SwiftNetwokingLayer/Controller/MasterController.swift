//
//  MasterController.swift
//  SwiftNetwokingLayer
//
//  Created by Marcelo on 16/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class MasterController: UITableViewController {

    // MARK: - Properties
    private var sources : SourcesViewModel!
    private var dataSource : TableViewDataSource<SourcesCell,SourceViewModel>!
    private var cellIdentifier = "Cell"

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Sources"
        // load app data
        loadAppData()
    }

    // MARK: App Data Source
    private func loadAppData() {
        self.sources = SourcesViewModel(completion: {
            // completion
            self.dataSource = TableViewDataSource(cellIdentifier: self.cellIdentifier, items: self.sources.sources, configureCell: { (cell, vm) in
                // completion
                cell.sourcesTitle.text = vm.name
                cell.sourcesDescription.text = vm.description
            })
            self.tableView.dataSource = self.dataSource
            self.tableView.reloadData()
        })

    }
}

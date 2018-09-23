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
    private var webService = WebService()

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // load app data
        loadAppData()
    }

    // MARK: App Data Source
    private func loadAppData() {
        self.sources = SourcesViewModel(webService: self.webService, completion: {
            // completion
            self.tableView.reloadData()
        })

    }
    
    // MARK: - TableView Delegate
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.sources == nil {
            return 0
        }else{
            return self.sources.sources.count
        }
    
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let source = self.sources.sources[indexPath.row]
        cell.textLabel?.text = source.name
        cell.textLabel?.numberOfLines = 0
        
        
        cell.detailTextLabel?.text = source.description
        cell.detailTextLabel?.numberOfLines = 0
        
        return cell
    }
 
}

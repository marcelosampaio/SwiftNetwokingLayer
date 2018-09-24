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
        self.navigationItem.title = "Sources"
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SourcesCell
        let source = self.sources.sources[indexPath.row]
        cell.sourcesTitle?.text = source.name
        cell.sourcesTitle?.numberOfLines = 0
        
        
        cell.sourcesDescription?.text = source.description
        cell.sourcesDescription?.numberOfLines = 0
        
        return cell
    }
 
}

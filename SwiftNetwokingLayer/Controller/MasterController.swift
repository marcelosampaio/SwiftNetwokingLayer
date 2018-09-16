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
    private var source = [WebContent]()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // load app data
    }

    // MARK: App Data Source
    private func loadAppData() {
        WebService().loadWebServiceData { (webContents) in
            // completion
            print("web service completion OK")
        }
            
    }
    
    
    // MARK: - TableView Delegate
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return source.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }
 
}

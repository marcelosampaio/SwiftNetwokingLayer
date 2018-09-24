//
//  SourcesCell.swift
//  SwiftNetwokingLayer
//
//  Created by Marcelo on 24/09/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class SourcesCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var sourcesTitle: UILabel!
    @IBOutlet weak var sourcesDescription: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

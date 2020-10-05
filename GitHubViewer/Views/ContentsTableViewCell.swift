//
//  ContentsTableViewCell.swift
//  GitHubViewer
//
//  Created by Martha R on 26/09/2020.
//  Copyright © 2020 Martha Salomão de Moraes. All rights reserved.
//

import UIKit

class ContentsTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var lbRepoTitle: UILabel!
    @IBOutlet weak var lbRepoSubtitle: UILabel!
    
    //fazer prepare que vai receber um repository
    
    // MARK: - Prepare
    func prepare(repositories: Repository) {
        lbRepoTitle.text = repositories.name
        lbRepoSubtitle.text = repositories.language
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

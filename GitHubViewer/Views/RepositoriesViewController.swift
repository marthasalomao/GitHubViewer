//
//  SecondViewController.swift
//  GitHubViewer
//
//  Created by Martha R on 01/10/2020.
//  Copyright © 2020 Martha Salomão de Moraes. All rights reserved.
//

import UIKit

class RepositoriesViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var ivUserPicture: UIImageView!
    @IBOutlet weak var lbUsername: UILabel!
    @IBOutlet weak var tvContents: UITableView!
    
    // MARK: - Properties
    var repositories: [Repository] = []
    
    // MARK: - Initializers
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(repositories: [Repository]) {
        super.init(nibName: nil, bundle: nil)
        self.repositories = repositories
    }
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        prepare()
        tvContents.delegate = self
        tvContents.dataSource = self
        tvContents.register(UINib(nibName: "ContentsTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "cell")
    }
    
    // MARK: - Methods
    func prepare() {
//        self.ivUserPicture
    self.lbUsername.text = repositories[0].owner?.login
    }
}


extension RepositoriesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repositories.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                                       for: indexPath) as? ContentsTableViewCell else {
                                                        return UITableViewCell()
        }
        
        let repository = repositories[indexPath.row]
        cell.prepare(repositories: repository)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }    
}

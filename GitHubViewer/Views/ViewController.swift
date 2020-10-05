//
//  ViewController.swift
//  GitHubViewer
//
//  Created by Martha R on 26/09/2020.
//  Copyright © 2020 Martha Salomão de Moraes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var lbUsername: UITextField!
    
    // MARK: - Properties
    var repositories: [Repository] = []
    var service = Service()
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Methods
    func loadRepositories() {
        guard let username = lbUsername.text else { return }
        service.request(router: Router.repos(username: username)) { (result: Result<[Repository]>) in
            switch result {
            case .success(let repository):
                self.repositories = repository
                let viewController = RepositoriesViewController(repositories: repository)
                self.navigationController?.pushViewController(viewController, animated: true)

            case .failure:
                print("deu ruim")
            }
        }
    }

    @IBAction func search(_ sender: UIButton) {
        loadRepositories()
    }
    
}


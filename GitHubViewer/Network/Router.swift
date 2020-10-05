//
//  Network.swift
//  GitHubViewer
//
//  Created by Martha R on 28/09/2020.
//  Copyright © 2020 Martha Salomão de Moraes. All rights reserved.
//

import Foundation

enum Router {
    case repos(username: String)
    
    var scheme: String {
        return "https"
    }
    
    var host: String {
        return "api.github.com"
    }
    
    var path: String {
        switch self {
        case .repos(let username):
            return "/users/" + username + "/repos"
        }
    }
    
    var method: String {
        return "GET"
    }
}


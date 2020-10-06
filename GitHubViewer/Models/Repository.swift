//
//  Infos.swift
//  GitHubViewer
//
//  Created by Martha R on 28/09/2020.
//  Copyright © 2020 Martha Salomão de Moraes. All rights reserved.
//

import Foundation

struct Repository: Codable {
    var name: String?
    var language: String?
    var owner: Owner?
}
    
struct Owner: Codable {
    var login: String
    var avatar_url: String
}



//
//  Representative.swift
//  Representatives
//
//  Created by Michael Duong on 1/31/18.
//  Copyright © 2018 Turnt Labs. All rights reserved.
//

import Foundation

struct Representative: Codable {
    
    let name: String
    let party: String
    let state: String
    let district: String
    let phone: String
    let office: String
    let link: String
    
    private enum CodingKeys: String, CodingKey {
        case name = "name"
        case party = "party"
        case state = "state"
        case district = "district"
        case phone = "phone"
        case office = "office"
        case link = "link"
    }
}

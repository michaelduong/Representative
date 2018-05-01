//
//  RepresentativeController.swift
//  Representatives
//
//  Created by Michael Duong on 1/31/18.
//  Copyright © 2018 Turnt Labs. All rights reserved.
//

import Foundation

class RepresentativeController {
    
    static let shared = RepresentativeController()
    
    // MARK: - Fetch
    
    let baseURL = URL(string: "https://whoismyrepresentative.com/getall_reps_bystate.php")!
    
    func searchRepresentatives(forState state:String, completion: @escaping ([Representative]?) -> Void) {
    
        let urlParameters = ["state": "\(state)", "output": "json"]
        
        var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
        
        let queryItems = urlParameters.flatMap({ URLQueryItem(name: $0.key, value: $0.value)})
        
        components?.queryItems = queryItems
        
        guard let requestURL = components?.url else {
`            completion(false); return }
    }
}

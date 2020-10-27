//
//  APIKey.swift
//  TheMovieDBApp
//
//  Created by Mohammed Gamal on 10/22/20.
//

import Foundation

class Utils {
    
    public static var apiKey: String {
        get {
            
            guard let filePath = Bundle.main.path(forResource: "TMDB-Info", ofType: "plist") else {
                fatalError("Couldn't find file 'TMDB-Info.plist'.")
            }
            
            let plist = NSDictionary(contentsOfFile: filePath)
            guard let value = plist?.object(forKey: "API_KEY") as? String else {
                fatalError("Couldn't find key 'API_KEY' in 'TMDB-Info.plist'.")
            }
            return value
        }
    }
}

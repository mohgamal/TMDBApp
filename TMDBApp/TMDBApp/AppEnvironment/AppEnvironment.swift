//
//  AppEnvironment.swift
//  TheMovieDBApp
//
//  Created by Mohammed Gamal on 10/22/20.
//

import Foundation

class AppEnvironment {
    
    static let baseURL = "https://api.themoviedb.org/3/"
    
    let discoverMovies = "\(baseURL)discover/movie?sort_by=popularity.desc&api_key=\(Utils.apiKey)"
}

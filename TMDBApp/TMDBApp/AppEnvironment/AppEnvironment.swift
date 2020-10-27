//
//  AppEnvironment.swift
//  TheMovieDBApp
//
//  Created by Mohammed Gamal on 10/22/20.
//

import Foundation

class AppEnvironment {
    
    static let baseURL = "https://api.themoviedb.org/3/"
    
    let discoverMovies = "\(baseURL)discover/movie?sort_by=popularity.desc&api_key=3e2339260d2b4cb99301e76c562061f5"
}

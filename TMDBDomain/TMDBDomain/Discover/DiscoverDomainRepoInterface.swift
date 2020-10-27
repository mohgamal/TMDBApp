//
//  DiscoverDomainRepoInterface.swift
//  TheMovieDBDomain
//
//  Created by Mohammed Gamal on 10/19/20.
//

import Foundation

public protocol DiscoverDomainRepoInterface {
    func discoverMovies(handler: @escaping (DiscoverResultEntity) -> (Void))
}

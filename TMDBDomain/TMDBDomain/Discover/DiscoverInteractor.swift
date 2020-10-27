//
//  DiscoverInteractor.swift
//  TheMovieDBDomain
//
//  Created by Mohammed Gamal on 10/19/20.
//

import Foundation

public protocol DiscoverInteractorInterface {
    func discoverMovies(handler: @escaping (DiscoverResultEntity) -> (Void))
}

public class DiscoverInteractor: DiscoverInteractorInterface {
    
    let discoverDomainRepo: DiscoverDomainRepoInterface
    
    public init (discoverDomainRepo: DiscoverDomainRepoInterface) {
        self.discoverDomainRepo = discoverDomainRepo
    }
    
    public func discoverMovies(handler: @escaping (DiscoverResultEntity) -> (Void)) {
        discoverDomainRepo.discoverMovies { (discoverDomainModel) in
            handler(discoverDomainModel)
        }
    }
}

//
//  DiscoverDataRepo.swift
//  TheMovieDBData
//
//  Created by Mohammed Gamal on 10/21/20.
//

import Foundation
import TMDBDomain

public class DiscoverDataRepo: DiscoverDomainRepoInterface {
    
    let discoverRemoteDataSource: DiscoverRemoteDataSourceInterface
    
    public init (discoverRemoteDataSource: DiscoverRemoteDataSourceInterface) {
        self.discoverRemoteDataSource = discoverRemoteDataSource
    }
    
    public func discoverMovies(handler: @escaping (DiscoverResultEntity) -> (Void)) {
        discoverRemoteDataSource.discoverMovies { discoverModel in
            let discoverResultEntity = DiscoverResultEntity(page: discoverModel?.page, movies: discoverModel?.getMovies(),
                                                            totalResults: discoverModel?.total_results, totalPages: discoverModel?.total_pages)
            handler(discoverResultEntity)
        }
    }
    
    
}

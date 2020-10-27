//
//  DiscoverDI.swift
//  TheMovieDBApp
//
//  Created by Mohammed Gamal on 10/22/20.
//

import TMDBPresentation
import TMDBDomain
import TMDBData

class DiscoverDI {
    let appEnvironment: AppEnvironment
    
    init(appEnvironment: AppEnvironment) {
        self.appEnvironment = appEnvironment
    }
    
    func discoverDependencies() -> DiscoverVM {
        let discoverMoviesURL = appEnvironment.discoverMovies
        
        let discoverRemoteDataSource = DiscoverRemoteDataSource(urlString: discoverMoviesURL)
        
        let discoverDataRepo = DiscoverDataRepo(discoverRemoteDataSource: discoverRemoteDataSource)
        
        let discoverInteracrtor = DiscoverInteractor(discoverDomainRepo: discoverDataRepo)
        
        let discoverVM = DiscoverVM(discoverInteractor: discoverInteracrtor)
        
        return discoverVM
    }
}

//
//  DiscoverVM.swift
//  TheMovieDBPresentation
//
//  Created by Mohammed Gamal on 10/22/20.
//

import Foundation
import TMDBDomain

public class DiscoverVM: ObservableObject {
    @Published var discoverResult: DiscoverResultEntity = DiscoverResultEntity(page: nil, movies: [], totalResults: nil, totalPages: nil)
    
    private var discoverInteractor: DiscoverInteractorInterface
    
    public init (discoverInteractor: DiscoverInteractorInterface) {
        self.discoverInteractor = discoverInteractor
    }
    
    func discoverMovies() {
        self.discoverInteractor.discoverMovies { [weak self] (discoverResult) in
            DispatchQueue.main.async {
                self?.discoverResult = discoverResult
            }
        }
    }
}

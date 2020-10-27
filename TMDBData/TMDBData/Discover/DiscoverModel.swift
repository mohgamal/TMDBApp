//
//  DiscoverModel.swift
//  TheMovieDBData
//
//  Created by Mohammed Gamal on 10/21/20.
//

import Foundation
import TMDBDomain

// MARK: - DiscoverResultModel
public struct DiscoverResultModel: Codable {
    public let page: Int?
    public let results: [DiscoverModel]?
    public let total_results, total_pages: Int?

    // MARK: - DiscoverModel
    public struct DiscoverModel: Codable {
        public let posterPath: String?
        public let adult: Bool?
        public let overview, releaseDate: String?
        public let genreIDS: [Int]?
        public let id: Int?
        public let originalTitle: String?
        public let originalLanguage: String?
        public let title: String?
        public let backdropPath: String?
        public let popularity: Double?
        public let voteCount: Int?
        public let video: Bool?
        public let voteAverage: Double?
        
        func dotDiscoverMovieEntity() -> DiscoverResultEntity.MovieEntity {
            return DiscoverResultEntity.MovieEntity.init(posterPath: posterPath, adult: adult,
                                                         overview: overview, releaseDate: releaseDate,
                                                         genreIDS: genreIDS ?? [], id: id, originalTitle: originalTitle,
                                                         originalLanguage: originalLanguage, title: title, backdropPath: backdropPath, popularity: popularity,
                                                         voteCount: voteCount, video: video, voteAverage: voteAverage)
        }
    }
    
   
    func getMovies() -> [DiscoverResultEntity.MovieEntity] {
        var moviesResult: [DiscoverResultEntity.MovieEntity] = []
        for movie in results ?? [] {
            moviesResult.append(movie.dotDiscoverMovieEntity())
        }
        
        return moviesResult
    }
    
    func dotDiscoverResultEntity() -> DiscoverResultEntity {
        return DiscoverResultEntity(page: page, movies: self.getMovies(), totalResults: total_pages, totalPages: total_pages)
    }
}




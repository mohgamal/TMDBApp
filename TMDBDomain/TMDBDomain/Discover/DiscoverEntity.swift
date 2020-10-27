//
//  DiscoverEntity.swift
//  TheMovieDBDomain
//
//  Created by Mohammed Gamal on 10/19/20.
//

import Foundation

// MARK: - DiscoverResultEntity
public struct DiscoverResultEntity: Codable {
    public let page: Int?
    public let movies: [MovieEntity]?
    public let totalResults, totalPages: Int?
    
    // MARK: - DiscoverEntity
    public struct MovieEntity: Codable, Identifiable {
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
        
        public init (posterPath: String?, adult: Bool?, overview: String?, releaseDate: String?, genreIDS: [Int],
                     id: Int?, originalTitle: String?,originalLanguage: String?, title: String?, backdropPath: String?, popularity: Double?,
                     voteCount: Int?, video: Bool?, voteAverage: Double?) {
            self.posterPath = posterPath
            self.adult = adult
            self.overview = overview
            self.releaseDate = releaseDate
            self.genreIDS = genreIDS
            self.id = id
            self.originalTitle = originalTitle
            self.originalLanguage = originalLanguage
            self.title = title
            self.backdropPath = backdropPath
            self.popularity = popularity
            self.voteCount = voteCount
            self.video = video
            self.voteAverage = voteAverage
        }
    }
    
    public init(page: Int?, movies: [MovieEntity]?, totalResults: Int?, totalPages: Int?) {
        self.page = page
        self.movies = movies
        self.totalResults = totalResults
        self.totalPages = totalPages
    }
}



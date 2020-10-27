//
//  DiscoverRemoteDataSource.swift
//  TheMovieDBData
//
//  Created by Mohammed Gamal on 10/21/20.
//

import Foundation
import TMDBDomain

public protocol DiscoverRemoteDataSourceInterface {
    init(urlString: String)
    
    func discoverMovies(handler: @escaping (DiscoverResultModel?) -> (Void))
}

public class DiscoverRemoteDataSource: DiscoverRemoteDataSourceInterface {

    let urlString: String
    
    required public init(urlString: String ) {
        self.urlString = urlString
    }
    
    public func discoverMovies(handler: @escaping (DiscoverResultModel?) -> (Void)) {
        guard let url = URL(string: urlString) else {
            return handler(nil)
        }
        
        let task  = URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            guard let data = data else {
                return handler(nil)
            }
            
            let decoder = JSONDecoder()
            let postModels = try! decoder.decode(DiscoverResultModel.self, from: data)
            
            handler(postModels)
        }
        task.resume()
    }
}


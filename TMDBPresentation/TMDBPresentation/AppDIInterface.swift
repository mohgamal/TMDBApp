//
//  AppDIInterface.swift
//  TheMovieDBPresentation
//
//  Created by Mohammed Gamal on 10/22/20.
//

import Foundation

public protocol AppDIInterface {
    
    func discoverDependencies() -> DiscoverVM
}

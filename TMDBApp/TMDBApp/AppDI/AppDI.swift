//
//  AppDI.swift
//  TheMovieDBApp
//
//  Created by Mohammed Gamal on 10/22/20.
//

import Foundation
import TMDBPresentation

class AppDI: AppDIInterface {
    static let shared = AppDI(appEnvironment: AppEnvironment())
    
    let appEnvironment: AppEnvironment
    
    init (appEnvironment: AppEnvironment) {
        self.appEnvironment = appEnvironment
    }
    
    func discoverDependencies() -> DiscoverVM {
        let discoverDI = DiscoverDI(appEnvironment: appEnvironment)
        
        let discoverVM = discoverDI.discoverDependencies()
        
        return discoverVM
    }
}

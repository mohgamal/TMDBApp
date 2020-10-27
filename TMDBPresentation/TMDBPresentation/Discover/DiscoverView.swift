//
//  DiscoverView.swift
//  TheMovieDBPresentation
//
//  Created by Mohammed Gamal on 10/22/20.
//

import SwiftUI

public struct DiscoverView: View {
    
    var appDI: AppDIInterface
    
    @ObservedObject public var discoverVM: DiscoverVM
    
    public init(appDI: AppDIInterface, discoverVM: DiscoverVM) {
        self.appDI = appDI
        self.discoverVM = discoverVM
    }
    
    public var body: some View {
        NavigationView {
            List {
                ForEach(discoverVM.discoverResult.movies!) { movie in
                    VStack {
                        Text(movie.title ?? "")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                        
                        Text(movie.overview ?? "")
                            .font(.body)
                            .multilineTextAlignment(.center)
                    }
                }
            }
            .navigationBarTitle("Discover Movies")
        }
        .onAppear {
            self.discoverVM.discoverMovies()
        }
    }
}

//
//  MovieService.swift
//  SwiftUIMovieDb
//
//  Created by Leonard Buduleanu on 28.08.2021.
//

import Foundation

protocol MovieService {
     
    func fetchMovies(from endpoint: MovieListEndpoint, completion: @escaping (Result<MoviesResponse, MovieError>) -> ())
    func fetchMovie(id: Int, completion: @escaping (Result<Movie, MovieError>) -> ())
    func searchMovie(query: String, completion: @escaping (Result<MoviesResponse, MovieError>) -> ())

}

enum MovieListEndpoint: String, CaseIterable {
    case nowPlaying = "now_playing"
    case upcoming
    case topRated = "top_rated"
    case popular
    
    var description: String {
        switch self {
        case .nowPlaying: return "Now Playing"
        case .upcoming: return "Upcoming"
        case .topRated: return "Top Rated"
        case .popular: return "Popular"
    
        }
    }
    
}

enum MovieError: Error {
    
    case apiError
    case invalidEndPont
    case invalidResponse
    case noData
    case serializationError
    
    var localizedDescription: String {
        switch self {
        case .apiError: return "Failed to fetch data"
        case .invalidEndPont: return "Invalid Endpoint"
        case .invalidResponse: return "Invalid Response"
        case . noData: return "No data"
        case .serializationError: return "Failed decode data"
        }
    }
    
    var errorUserInfo: [String: Any]{
        [NSLocalizedDescriptionKey: localizedDescription]
    }
    
}

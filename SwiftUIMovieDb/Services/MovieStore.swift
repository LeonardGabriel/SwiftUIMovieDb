//
//  MovieStore.swift
//  SwiftUIMovieDb
//
//  Created by Leonard Buduleanu on 28.08.2021.
//

import Foundation


class MovieStore: MovieService {
    
    static let shared = MovieStore()
    private init() {}
    
    private let apiKey = "aafd4ea75a5f70605076a25af9a25201"
    private let baseAPIURL = "https://api.themoviedb.org/3"
    private let urlSession = URLSession.shared
    private let jsonDecoder = Utils.jsonDecoder
    
    
    func fetchMovies(from endpoint: MovieListEndpoint, completion: @escaping (Result<MoviesResponse, MovieError>) -> ()) {
        guard let url = URL(string: "\(baseAPIURL)/movie/\(endpoint.rawValue)") else {
            completion(.failure(.invalidEndPont))
            return
        }
        
        self.loadURLAndDecode(url: url, completion: completion)
    }
    
    func fetchMovie(id: Int, completion: @escaping (Result<Movie, MovieError>) -> ()) {
        
        guard let url = URL(string: "\(baseAPIURL)/movie/\(id)") else {
            completion(.failure(.invalidEndPont))
            return
        }
        
        self.loadURLAndDecode(url: url, params: [
            "append_to_response":"videos, credits"
        ], completion: completion)
        
        
    }
    
    func searchMovie(query: String, completion: @escaping (Result<MoviesResponse, MovieError>) -> ()) {
        
        guard let url = URL(string: "\(baseAPIURL)/search/movie") else {
            completion(.failure(.invalidEndPont))
            return
        }
        
        self.loadURLAndDecode(url: url, params: [
            "language": "en-us",
            "include_adult": "false",
            "region": "US",
            "query": query
        ], completion: completion)
        
    }
    
    private func loadURLAndDecode<D: Decodable>(url: URL, params: [String: String]? = nil, completion: @escaping (Result<D, MovieError>) -> ()){
        guard var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
            completion(.failure(.invalidEndPont))
            return
        }
        
        var quertyItems = [URLQueryItem(name: "api_key", value: apiKey)]
        if let params = params {
            quertyItems.append(contentsOf: params.map {URLQueryItem(name: $0.key, value: $0.value)})
        }
        
        urlComponents.queryItems = quertyItems
        
        guard let finalUrl = urlComponents.url else {
            completion(.failure(.invalidEndPont))
            return
        }
        
        urlSession.dataTask(with: finalUrl) { [weak self] (data, response, error) in
            guard let self = self else {return}
            if error != nil {
                self.excuteCompletionHandlerInMainThread(with: .failure(.apiError), completion: completion)
                return
            }
            
        
            guard let httpResponse = response as? HTTPURLResponse, 200..<300 ~= httpResponse.statusCode else {
                self.excuteCompletionHandlerInMainThread(with: .failure(.invalidResponse), completion: completion)
                return
            }
            
            guard let data = data else {
                self.excuteCompletionHandlerInMainThread(with: .failure(.noData), completion: completion)
                return
            }
            
            do {
                let decodeResponse = try self.jsonDecoder.decode(D.self, from: data)
                self.excuteCompletionHandlerInMainThread(with: .success(decodeResponse), completion: completion)
            }catch {
                self.excuteCompletionHandlerInMainThread(with: .failure(.serializationError), completion: completion)
            }
        }.resume()
        
    }
    
    
    private func excuteCompletionHandlerInMainThread<D: Decodable>(with result: Result<D, MovieError>, completion: @escaping (Result<D, MovieError>) -> ()) {
        
        DispatchQueue.main.async {
            completion(result)
        }
        
    }
    
}


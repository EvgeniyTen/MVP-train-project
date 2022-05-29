//
//  NetworkService.swift
//  Pattern Lessons MVP 2
//
//  Created by Евгений Тимофеев on 28.05.2022.
//

import Foundation

class NetworkService: NetworkServiceProtocol {


    func getComments(completion: @escaping (Result<[CommentModel]?, Error>) -> Void) {
        let stringURL = "https://jsonplaceholder.typicode.com/comments"
        guard let url = URL(string: stringURL) else {return}
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                let subject = try JSONDecoder().decode([CommentModel].self, from: data!)
                completion(.success(subject))
            } catch  {
                completion(.failure(error))
            }
        }.resume()
    }
    
}

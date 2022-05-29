//
//  NetworkServiceProtocol.swift
//  Pattern Lessons MVP 2
//
//  Created by Евгений Тимофеев on 28.05.2022.
//

import Foundation

protocol NetworkServiceProtocol {
    func getComments(completion: @escaping (Result<[CommentModel]?, Error>) -> Void)
}

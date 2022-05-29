//
//  DetailPresenterProtocol.swift
//  Pattern Lessons MVP 2
//
//  Created by Евгений Тимофеев on 29.05.2022.
//

import Foundation

protocol DetailPresenterProtocol: AnyObject {
    init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, comment: CommentModel?)
    func setSomeComment()
}

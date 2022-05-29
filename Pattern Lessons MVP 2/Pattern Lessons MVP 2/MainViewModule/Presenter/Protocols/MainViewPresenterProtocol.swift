//
//  MainViewPresenterProtocol.swift
//  Pattern Lessons MVP 2
//
//  Created by Евгений Тимофеев on 28.05.2022.
//

import Foundation

protocol MainViewPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, networkService: NetworkServiceProtocol)
    func getComments()
    var comments: [CommentModel]? {get set}
    
}

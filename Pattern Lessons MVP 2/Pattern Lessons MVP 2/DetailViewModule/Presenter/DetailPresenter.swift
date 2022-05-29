//
//  DetailPresenter.swift
//  Pattern Lessons MVP 2
//
//  Created by Евгений Тимофеев on 29.05.2022.
//

import Foundation

class DetailPresenter: DetailPresenterProtocol {
    weak var view: DetailViewProtocol?
    let networkService: NetworkServiceProtocol!
    var comment: CommentModel?
    
    required init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, comment: CommentModel?) {
        self.view = view
        self.networkService = networkService
        self.comment = comment
        
        
    }
    
    public func setSomeComment() {
        self.view?.setComment(comment: comment)
    }
}

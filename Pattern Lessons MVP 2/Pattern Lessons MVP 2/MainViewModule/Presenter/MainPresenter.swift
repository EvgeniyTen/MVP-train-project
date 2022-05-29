//
//  MainPresenter.swift
//  Pattern Lessons MVP 2
//
//  Created by Евгений Тимофеев on 28.05.2022.
//

import Foundation

class MainPresenter: MainViewPresenterProtocol {
    
    
    weak var view: MainViewProtocol?
    let networkService: NetworkServiceProtocol!
    var comments: [CommentModel]?
    
    required init(view: MainViewProtocol, networkService: NetworkServiceProtocol) {
        self.view = view
        self.networkService = networkService
        getComments()
    }
    
    func getComments() {
        networkService?.getComments { [weak self] result in
            guard let self = self else {return}
            DispatchQueue.main.async { [self] in
                switch result {
                case .success(let comments):
                    self.comments = comments
                    self.view?.success()
                case .failure(let error):
                    self.view?.failure(error: error)
                }
            }
        }
    }
}

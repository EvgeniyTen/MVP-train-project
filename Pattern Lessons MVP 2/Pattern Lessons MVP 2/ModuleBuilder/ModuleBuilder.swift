//
//  ModuleBuilder.swift
//  Pattern Lessons MVP 2
//
//  Created by Евгений Тимофеев on 28.05.2022.
//

import UIKit

class ModuleBuilder: Builder {
    
    static func createMain() -> UIViewController {
        
        let view = MainViewController()
        let networkServise = NetworkService()
        
        let presenter = MainPresenter(view: view, networkService: networkServise)
        
        view.presenter = presenter
        return view
     
    }
    
    static func createDetailModule(comment: CommentModel?) -> UIViewController {
        
        let view = DetailViewController()
        let networkServise = NetworkService()
        
        let presenter = DetailPresenter(view: view, networkService: networkServise, comment: comment)
        
        view.presenter = presenter
        return view
    }
}

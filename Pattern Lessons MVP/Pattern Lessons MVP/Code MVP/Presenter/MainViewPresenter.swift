//
//  MainViewPresenter.swift
//  Pattern Lessons MVP
//
//  Created by Евгений Тимофеев on 26.05.2022.
//

import Foundation



class MainViewPresenter: PresenterOutput {
    
    weak var view: PresenterInput!
    var dataManager: DataManager!

    
    func didPressedAction() {
        
       let numbers = dataManager.obtainNumbers()
        
        view.showNumbers(numbers)
    }
    
    
}

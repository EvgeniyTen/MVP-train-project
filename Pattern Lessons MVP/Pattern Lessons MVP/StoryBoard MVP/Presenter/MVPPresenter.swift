//
//  MVPPresenter.swift
//  Pattern Lessons MVP
//
//  Created by Евгений Тимофеев on 26.05.2022.
//

import Foundation

class MVPPresenter: MVPViewOutput {
    
    weak var view: MVPViewInput!
    var dataManager: DataManager!

    
    func didPressedAction() {
        
       let numbers = dataManager.obtainNumbers()
        
        view.showNumbers(numbers)
    }
    
    
}

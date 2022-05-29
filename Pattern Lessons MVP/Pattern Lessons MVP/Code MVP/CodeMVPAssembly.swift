//
//  CodeMVPAssembly.swift
//  Pattern Lessons MVP
//
//  Created by Евгений Тимофеев on 26.05.2022.
//

import Foundation
import UIKit

class MainModuleAssembly {
    
    
    class func configureModule() -> UIViewController {
        
        let view = MainViewController()
        let presenter = MainViewPresenter()
        let dataManager = DataManagerImplementation()
        
        view.output = presenter
        presenter.view = view
        presenter.dataManager = dataManager
        
        return view
    }
}

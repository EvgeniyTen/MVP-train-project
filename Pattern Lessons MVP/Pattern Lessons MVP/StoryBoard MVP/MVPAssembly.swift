//
//  MVPAssembly.swift
//  Pattern Lessons MVP
//
//  Created by Евгений Тимофеев on 26.05.2022.
//

import Foundation
import UIKit

class MVPAssembly: NSObject {
    
    @IBOutlet weak var viewController: UIViewController!
    
    override func awakeFromNib(){
        super.awakeFromNib()
        
        guard let view = viewController as? MVPViewController else {return}
        let presenter = MVPPresenter()
        let dataManager = DataManagerImplementation()
        
        
        view.output = presenter
        presenter.view = view
        presenter.dataManager = dataManager
    }
}

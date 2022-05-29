//
//  MainViewController.swift
//  Pattern Lessons MVP
//
//  Created by Евгений Тимофеев on 26.05.2022.
//

import UIKit

class MainViewController: UIViewController,PresenterInput, MainViewDelegate {
    
    
    var output: PresenterOutput!
    var mainView = MainView()
    
    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.delegate = self
        
    }
    
    func actionDidPressed() {
        output.didPressedAction()
    }
    func showNumbers(_ numbers: [Int]) {
        let numbersString = numbers.map({"\($0)"}).joined(separator: ",")
        mainView.textLabel.text = numbersString
    }
}

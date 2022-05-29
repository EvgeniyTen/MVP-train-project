//
//  ViewController.swift
//  Pattern Lessons MVP
//
//  Created by Евгений Тимофеев on 26.05.2022.
//

import UIKit

class MVPViewController: UIViewController, MVPViewInput {
 
    var output: MVPViewOutput!
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//MARK: - Input
    
    func showNumbers(_ numbers: [Int]) {
        let numbersString = numbers.map({ "\($0)"}).joined(separator: ",")
        textLabel.text = numbersString
    }
    

//MARK: - Actions
    @IBAction func didPressedAction(_ sender: UIButton) {
        output.didPressedAction()
    }
}


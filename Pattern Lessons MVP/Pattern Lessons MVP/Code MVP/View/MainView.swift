//
//  MainView.swift
//  Pattern Lessons MVP
//
//  Created by Евгений Тимофеев on 26.05.2022.
//

import UIKit


class MainView: UIView {
    
    var delegate: MainViewDelegate?

    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        
        return label
    }()

    lazy var  actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Push me", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 20

        button.addTarget(self, action: #selector(didPressedActionButton), for: .touchUpInside)
        
                return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        textLabel.text = "Hello"
        
        backgroundColor = .white
        addSubview(textLabel)
        addSubview(actionButton)
        
        NSLayoutConstraint.activate([
        actionButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        actionButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        
        textLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -40),
        textLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
        textLabel.rightAnchor.constraint(equalTo: self.rightAnchor),
        ])

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Button action
   @objc func didPressedActionButton(){
       delegate?.actionDidPressed()
    }
}

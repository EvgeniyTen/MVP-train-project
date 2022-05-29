//
//  DetailViewController.swift
//  Pattern Lessons MVP 2
//
//  Created by Евгений Тимофеев on 29.05.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    //MARK: IBOutlets
    @IBOutlet weak var detailCommentLabel: UILabel!
    
    var presenter: DetailPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setSomeComment()
    }
}

extension DetailViewController: DetailViewProtocol {
    func setComment(comment: CommentModel?) {
        detailCommentLabel.text = comment?.body
    }
    
    
}

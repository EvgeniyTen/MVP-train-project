//
//  ModuleBuilderProtocol.swift
//  Pattern Lessons MVP 2
//
//  Created by Евгений Тимофеев on 28.05.2022.
//

import UIKit

protocol Builder {
    static func createMain() -> UIViewController
    static func createDetailModule(comment: CommentModel?) -> UIViewController
}


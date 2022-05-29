//
//  Person.swift
//  Pattern Lessons MVP 2
//
//  Created by Евгений Тимофеев on 28.05.2022.
//

import Foundation

struct CommentModel: Codable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}

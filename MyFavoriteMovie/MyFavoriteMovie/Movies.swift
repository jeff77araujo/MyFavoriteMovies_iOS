//
//  Movies.swift
//  MyFavoriteMovie
//
//  Created by Jefferson Oliveira de Araujo on 23/10/21.
//

import UIKit

class Movies {
    let title: String
    let description: String
    let imageMovie: UIImage?
    
    init(title: String, description: String, imageMovie: UIImage) {
        self.title = title
        self.description = description
        self.imageMovie = imageMovie
    }
}

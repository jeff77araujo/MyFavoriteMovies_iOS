//
//  Bundle+myFavoriteMovie.swift
//  MyFavoriteMovie
//
//  Created by Jefferson Oliveira de Araujo on 23/10/21.
//

import UIKit

extension Bundle {
    
    static let movies = Bundle(for: ViewController.self)

    func image(named: String) -> UIImage? {
        return UIImage(named: named, in: self, compatibleWith: nil)
    }
}

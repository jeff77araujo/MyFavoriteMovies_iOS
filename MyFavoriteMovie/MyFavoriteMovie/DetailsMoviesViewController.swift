//
//  DetailsMoviesViewController.swift
//  MyFavoriteMovie
//
//  Created by Jefferson Oliveira de Araujo on 24/10/21.
//

import Foundation
import UIKit


class DetailsMoviesViewController: UIViewController {
    
    var movies: Movies!
    
    @IBOutlet weak var imageViewMovies: UIImageView!
    @IBOutlet weak var textTitle: UILabel!
    @IBOutlet weak var textDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewMovies.image = movies.imageMovie
        textTitle.text = movies.title
        textDescription.text = movies.description
    }
}

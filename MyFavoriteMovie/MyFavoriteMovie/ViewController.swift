//
//  ViewController.swift
//  MyFavoriteMovie
//
//  Created by Jefferson Oliveira de Araujo on 23/10/21.
//

import UIKit

class ViewController: UITableViewController {
    
    var mMovies: [Movies] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        dataMovies()
    }

//  MARK: EXTENSIONS
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mMovies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellMovie", for: indexPath) as! MovieCell

        let movie: Movies = mMovies[indexPath.row]
        cell.titleLabel.text = movie.title
        cell.descriptionLabel.text = movie.description
        cell.imageViewMovie.image = movie.imageMovie
        
        cell.imageViewMovie?.layer.cornerRadius = cell.imageViewMovie.frame.size.width / 2
        cell.imageViewMovie?.clipsToBounds = true
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsMovieSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let movieSelected = mMovies[indexPath.row]
                let vcDestiny = segue.destination as! DetailsMoviesViewController
                vcDestiny.movies = movieSelected
            }
        }
    }

    func dataMovies() {
        mMovies = [
            Movies(title: "007 - Spectro", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard", imageMovie: UIImage(named: "filme1")!),
            Movies(title: "Star Wars", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard", imageMovie: UIImage(named: "filme2")!),
            Movies(title: "Impacto Mortal", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard", imageMovie: UIImage(named: "filme3")!),
            Movies(title: "Deadpool", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard", imageMovie: UIImage(named: "filme4")!),
            Movies(title: "O Regresso", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard", imageMovie: UIImage(named: "filme5")!),
            Movies(title: "A Herdeira", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard", imageMovie: UIImage(named: "filme6")!),
            Movies(title: "Caçadores de emoção", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard", imageMovie: UIImage(named: "filme7")!),
            Movies(title: "Regresso do Mal", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard", imageMovie: UIImage(named: "filme8")!),
            Movies(title: "Tarzan", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard", imageMovie: UIImage(named: "filme9")!),
            Movies(title: "Hardcore", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard", imageMovie: UIImage(named: "filme10")!)
        ]
    }
}


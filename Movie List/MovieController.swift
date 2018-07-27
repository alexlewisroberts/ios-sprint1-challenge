//
//  MovieController.swift
//  Movie List
//
//  Created by Alex Roberts on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
	
	func createMovie(withText text: String) {
		let movie = Movie(text: text)
		movies.append(movie)
	}
	
	func deleteMovie(movie: Movie) {
		guard let index = movies.index(of: movie) else { return }
		
		movies.remove(at: index)
	}
	
	// MARK: - Properties
	
	private(set) var movies: [Movie] = []
	
}

//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Alex Roberts on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class MoviesTableViewController: UIViewController, MoviesPresenter, UITableViewDataSource {
	
	// MARK: - UITableViewDataSource
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return movieController?.movies.count ?? 0
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "MoviesCell", for: indexPath)
		guard let movieCell = cell as? MovieTableViewCell else { return cell }
		
		let movie = movieController?.movies[indexPath.row]
		movieCell.movie = movie
		
		return movieCell
	}
	
	var movieController: MovieController?
}


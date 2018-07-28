//
//  ViewMoviesViewController.swift
//  Movie List
//
//  Created by Alex Roberts on 7/27/18.
//  Copyright © 2018 Lambda School Inc. All rights reserved.
//

import UIKit

class ViewMoviesViewController: UIViewController, MoviesPresenter, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		tableView.reloadData()
	}
	
	// MARK: - UITableViewDataSource
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return movieController?.movies.count ?? 0
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "MoviesCell", for: indexPath)
		guard let movieCell = cell as? MoviesTableViewCell else { return cell }
		
		let movie = movieController?.movies[indexPath.row]
		movieCell.movie = movie
		
		return movieCell
	}
	
	@IBOutlet weak var movieLabel: UITableView!
	@IBOutlet weak var tableView: UITableView!
	var movieController: MovieController?

}

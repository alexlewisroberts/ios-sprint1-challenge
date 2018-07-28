//
//  MoviesTableViewCell.swift
//  Movie List
//
//  Created by Alex Roberts on 7/27/18.
//  Copyright © 2018 Lambda School Inc. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

	private func updateViews() {
		guard let movie = movie else { return }
		
		movieLabel.text = movie.text

	}
	
	var movie: Movie? {
		didSet {
			updateViews()
		}
	}
	
	@IBOutlet weak var buttonLabel: UIButton!
	@IBAction func toggleHasSeen(_ sender: Any) {
		guard var text = buttonLabel.title(for: .normal) else { return }
		if text == "Seen" {
			text = "Not Seen"
		} else if text == "Not Seen" {
			text = "Seen"
		} else { return }
		buttonLabel.setTitle(text, for: .normal)
	}
	
	@IBOutlet weak var movieLabel: UILabel!
	
	
}

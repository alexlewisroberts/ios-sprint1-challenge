//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Alex Roberts on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class MovieTableViewCell: UITableViewCell {
/*
	@IBAction func toggleSeen(_ sender: Any) {
		guard var text = buttonLabel.text else { return }
		if text == "Seen" {
			text = "Not Seen"
		} else if text == "Not Seen" {
			text = "Seen"
		} else { return }
		buttonLabel.text = text
	}
	*/
	private func updateViews() {
		guard let movie = movie else { return }
		
		movieLabel.text = movie.text
	}
	
	var movie: Movie? {
		didSet {
			updateViews()
		}
	}
	
	@IBOutlet weak var movieLabel: UILabel!
	
	
}

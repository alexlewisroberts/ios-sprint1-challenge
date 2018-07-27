//
//  CreateNewMovie.swift
//  Movie List
//
//  Created by Alex Roberts on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class CreateNewMovieViewController: UIViewController, MoviesPresenter {
	
	@IBAction func createNewMovie(_ sender: Any) {
		
		guard let text = movieTitleTextField.text else { return }
		
		movieController?.createMovie(withText: text)
	}
	
	var movieController: MovieController?
	
	@IBOutlet weak var movieTitleTextField: UITextField!
	
}

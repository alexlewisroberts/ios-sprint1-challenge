//
//  CreateNewMovieViewController.swift
//  Movie List
//
//  Created by Alex Roberts on 7/27/18.
//  Copyright © 2018 Lambda School Inc. All rights reserved.
//

import UIKit

class CreateNewMovieViewController: UIViewController, MoviesPresenter {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

	@IBOutlet weak var movieTitleTextField: UITextField!
	
	@IBAction func createNewMovie(_ sender: Any) {
		guard let text = movieTitleTextField.text else { return }
		
		movieController?.createMovie(withText: text)
	}
	
	var movieController: MovieController?

}

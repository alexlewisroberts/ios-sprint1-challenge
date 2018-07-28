//
//  MoviesTabBarController.swift
//  Movie List
//
//  Created by Alex Roberts on 7/27/18.
//  Copyright © 2018 Lambda School Inc. All rights reserved.
//

import UIKit

class MoviesTabBarController: UITabBarController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		for childVC in childViewControllers {
			if let childVC = childVC as? MoviesPresenter {
				childVC.movieController = movieController
			}
		}
	}
	
	let movieController = MovieController()
	

}

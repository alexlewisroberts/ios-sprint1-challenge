//
//  MoviesTabBarController.swift
//  Movie List
//
//  Created by Alex Roberts on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PlacesTabBarViewController: UITabBarController {
	
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

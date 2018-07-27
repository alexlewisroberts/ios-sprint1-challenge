//
//  MoviesPresenter.swift
//  Movie List
//
//  Created by Alex Roberts on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

protocol MoviesPresenter: class {
	var movieController: MovieController? { get set	}
}

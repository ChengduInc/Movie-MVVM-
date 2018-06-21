//
//  MovieViewModel.swift
//  Movie
//
//  Created by Apple on 2018/6/20.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class MovieViewModel: NSObject {
    
    
    var reloadMovieList = {() -> () in }
    var movieArray : [Movie]? = []{
        didSet{
            reloadMovieList()
        }
    }
    
    func addMovieData(name:String,director:String,date:String)  {
        movieArray?.append(Movie.init(name: name, director: director, date: date))
    }
    

}

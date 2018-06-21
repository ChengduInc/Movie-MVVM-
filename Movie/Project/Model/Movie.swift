//
//  Movie.swift
//  Movie
//
//  Created by Apple on 2018/6/21.
//  Copyright © 2018年 Apple. All rights reserved.
//

import Foundation

class Movie {
    
    var name : String?
    var date : String?
    var director : String?
    
    init() {
        
    }
    
    init(name:String?,director:String?,date:String?) {
        self.name = name
        self.date = date
        self.director = director
    }
    
}

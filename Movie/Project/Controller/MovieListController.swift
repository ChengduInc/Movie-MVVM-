//
//  MovieListController.swift
//  Movie
//
//  Created by Apple on 2018/6/20.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

var movieViewModel = MovieViewModel()

class MovieListController: UIViewController {
    
    
    // MARK :- LazyLoad
    lazy var tableView : UITableView = {
        let tableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
        tableView.register( UINib(nibName: "MovieListCell", bundle: nil), forCellReuseIdentifier: "cellID")
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.plain, target: self, action: #selector(addMovie))
        movieViewModel.reloadMovieList = { [ weak self] in
            
            self?.tableView.reloadData()
        }
        
    }
    
    @objc func addMovie()  {
        self.navigationController?.pushViewController(NewMovieController(), animated: true)
    }

}

extension MovieListController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieViewModel.movieArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! MovieListCell
        cell.movieObj = movieViewModel.movieArray?[indexPath.row]
        return cell
    }
    
}

extension MovieListController : UITableViewDelegate {
    
}



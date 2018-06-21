//
//  NewMovieController.swift
//  Movie
//
//  Created by Apple on 2018/6/21.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class NewMovieController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var directorTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func append(_ sender: Any) {
        
        movieViewModel.addMovieData(name: nameTextField.text!, director: directorTextField.text!, date: dateTextField.text!)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}

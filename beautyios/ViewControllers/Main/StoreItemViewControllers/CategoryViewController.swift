//
//  CategoryViewController.swift
//  beautyios
//
//  Created by Michael on 6/25/17.
//  Copyright © 2017 Michael. All rights reserved.
//

import Foundation


class CategoryViewController : UIViewController{
    
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        heightConstraint.constant = 72
    }
    
}
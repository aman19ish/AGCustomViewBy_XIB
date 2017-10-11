//
//  ViewController.swift
//  AGCustomViewBy_XIB
//
//  Created by Aman Gupta on 11/10/17.
//  Copyright © 2017 aman19ish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var customViewFirst: CustomUIView!
    @IBOutlet weak var custumViewSecond: UIView!
    
    //MARK: - IVIew life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        custumViewSecond.layer.cornerRadius = 40
        custumViewSecond.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


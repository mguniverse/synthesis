//
//  ViewController.swift
//  Synthesis
//
//  Created by Danny Perski on 9/26/15.
//  Copyright (c) 2015 Danny Perski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playView: UIView!
    @IBOutlet weak var aboutView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        playView.layer.cornerRadius = 12
        playView.clipsToBounds = true
        aboutView.layer.cornerRadius = 12
        aboutView.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


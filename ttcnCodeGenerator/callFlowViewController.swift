//
//  callFlowViewController.swift
//  ttcnCodeGenerator
//
//  Created by Sauron on 2017. 02. 13..
//  Copyright © 2017. Sauron. All rights reserved.
//

import UIKit

class callFlowViewController: UIViewController {

    @IBOutlet weak var userA: UIButton!
    @IBOutlet weak var originatingMtas: UIButton!
    @IBOutlet weak var HSSNode: UIButton!
    @IBOutlet weak var userB: UIButton!
    @IBOutlet weak var CDFNode: UIButton!
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.isHidden = true
        labelTwo.isHidden = true
        originatingMtas.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sipMessage(_ sender: UISwipeGestureRecognizer) {
        if (sender.direction == .right) {
            labelOne.text = "INVITE"
            labelOne.isHidden = false
            originatingMtas.isHidden = false
        } else if (sender.direction == .left) {
            labelTwo.text = "NO RECIPIENT!"
            labelTwo.isHidden = false
        }
    }
    
    @IBAction func mtasMessages(_ sender: UISwipeGestureRecognizer) {
        
    }

}


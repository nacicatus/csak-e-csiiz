//
//  callFlowViewController.swift
//  ttcnCodeGenerator
//
//  Created by Sauron on 2017. 02. 13..
//  Copyright © 2017. Sauron. All rights reserved.
//

import UIKit

class callFlowViewController: UIViewController {

    var frameWorkFunction_1 = "f_auto_initialRegistration(vg_sdat_continue, vg_sdat_timeOutValue, vg_sdat_tcDuration,vg_sdat_shSessions[0], vg_sdat_IscSessions[0], T1_E, vg_sdat_msgParametersRegister, t_Sh_serviceUnconditionalCDiv(0, \"sip:forwardTo@another.domain.com\",\"true\"));"
    
    @IBOutlet weak var userA: UIButton!
    @IBOutlet weak var originatingMtas: UIButton!
    @IBOutlet weak var HSSNode: UIButton!
    @IBOutlet weak var userB: UIButton!
    @IBOutlet weak var CDFNode: UIButton!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    @IBOutlet weak var labelSeven: UILabel!
    @IBOutlet weak var labelEight: UILabel!
    @IBOutlet weak var ttcnCode: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        originatingMtas.isHidden = true
        HSSNode.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
        labelSeven.isHidden = true
        labelEight.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fAutoInitialReg(_ sender: UISwipeGestureRecognizer) {
        if (sender.direction == .right) {
            labelOne.isHidden = false
            originatingMtas.isHidden = false
            
            HSSNode.isHidden = false

            labelThree.isHidden = false
            labelFour.isHidden = false
            labelFive.isHidden = false
            labelSix.isHidden = false
            labelSeven.isHidden = false
            labelEight.isHidden = false
            labelTwo.isHidden = false
            
            ttcnCode.text! = testCaseCode + frameWorkFunction_1
        
        }
    }

    
//    @IBAction func mtasMessages(_ sender: UISwipeGestureRecognizer) {
//        if (sender.direction == .right) {
//            
//            
//        }
//    }
//
//}

}

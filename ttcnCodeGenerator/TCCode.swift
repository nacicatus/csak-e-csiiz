//
//  TCCode.swift
//  ttcnCodeGenerator
//
//  Created by Sauron on 2017. 02. 15..
//  Copyright © 2017. Sauron. All rights reserved.
//

import Foundation

// template user variables
var testCaseUID = "TRAF0150 \n"
var userEnteredDescription = "Verify that for a successful SIP session establishment the mtasMmtOrigNoReplyTimer is stopped on INVITE Accept Response - Originating MTAS. \n"
var mtc = "Mtc_CT"

var testCaseCodeBeginTestCase = "testcase TC-TOIP_\(testCaseUID)() runs on \(mtc){ \n"

// template comment variables
var testCaseCodeBeginComment = "var/*************************************************** \n"
var tag = "*    Tag:    TC-TOIP2-\(testCaseUID)"
var description: String = "*    Description:    \(userEnteredDescription) \n"
var testCaseCodeEndComment = "*******************************************************/ \n\n"



var testCaseCode = testCaseCodeBeginComment + tag + description + testCaseCodeEndComment + testCaseCodeBeginTestCase

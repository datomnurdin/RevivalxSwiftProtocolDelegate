//
//  ViewController.swift
//  RevivalxSwiftProtocolDelegate
//
//  Created by Mohammad Nurdin bin Norazan on 9/17/15.
//  Copyright (c) 2015 Nurdin Norazan Services. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataEnteredDelegate {

    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func userDidEnterInformation(info: NSString) {
        lblResult.text = info as String
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SecondSegue" {
            let secondViewController: SecondViewController = segue.destinationViewController as! SecondViewController
            secondViewController.delegate = self
        }
    }
}
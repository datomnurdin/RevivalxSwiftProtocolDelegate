//
//  SecondViewController.swift
//  RevivalxSwiftProtocolDelegate
//
//  Created by Mohammad Nurdin bin Norazan on 9/17/15.
//  Copyright (c) 2015 Nurdin Norazan Services. All rights reserved.
//

import UIKit

protocol DataEnteredDelegate{
    func userDidEnterInformation(info: NSString)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var txtData: UITextField!
    var delegate:DataEnteredDelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func sendData(sender: AnyObject) {
        if (delegate != nil){
            let data: NSString = txtData.text
            
            delegate!.userDidEnterInformation(data)
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
}
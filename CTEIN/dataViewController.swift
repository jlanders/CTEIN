//
//  dataViewController.swift
//  CTEIN
//
//  Created by James Landers on 1/29/16.
//  Copyright © 2016 James Landers. All rights reserved.
//

import Foundation
import UIKit
class dataViewController: UIViewController {
    
    //EIN TextBoxes
    @IBOutlet weak var einText: UITextField!
    @IBOutlet weak var eidNewText: UITextField!
    
    //Serial Number TextBoxes
    @IBOutlet weak var snText: UITextField!
    @IBOutlet weak var snNewText: UITextField!
    
    @IBOutlet weak var qwkLabl: UILabel!
    
    //Switches
    @IBOutlet weak var einModify: UISwitch!  //EIN
    @IBOutlet weak var snModify: UISwitch!   //Serial Number
   
    @IBAction func einModifyChg(sender: AnyObject) {
        
        if einModify.on {
            qwkLabl.text = "Switch is on"
            self.eidNewText.enabled = true
            self.eidNewText.backgroundColor = UIColor(
                  red: 0x41/255,
                green: 0xae/255,
                 blue: 0xff/255,
                alpha: 1.0)
            self.eidNewText.textColor = UIColor(
                red: 0xff/255,
                green: 0xff/255,
                blue: 0xff/255,
                alpha: 1.0)
            self.eidNewText .becomeFirstResponder()
            
        } else {
            qwkLabl.text = "Switch is off"
            self.eidNewText.enabled = false
            self.eidNewText.backgroundColor = UIColor(
                red: 0xe0/255,
                green: 0xe0/255,
                blue: 0xe0/255,
                alpha: 1.0)
            self.eidNewText.textColor = UIColor(
                red: 0x00/255,
                green: 0x00/255,
                blue: 0x00/255,
                alpha: 1.0)
        }
        
    }
    
    @IBAction func snModifyChg(sender: AnyObject) {
        
        if snModify.on {
            qwkLabl.text = "Switch is on"
            self.snNewText.enabled = true
            self.snNewText.backgroundColor = UIColor(
                red: 0x41/255,
                green: 0xae/255,
                blue: 0xff/255,
                alpha: 1.0)
            self.snNewText.textColor = UIColor(
                red: 0xff/255,
                green: 0xff/255,
                blue: 0xff/255,
                alpha: 1.0)
            self.snNewText .becomeFirstResponder()
            
        } else {
            qwkLabl.text = "Switch is off"
            self.snNewText.enabled = false
            self.snNewText.backgroundColor = UIColor(
                red: 0xe0/255,
                green: 0xe0/255,
                blue: 0xe0/255,
                alpha: 1.0)
            self.snNewText.textColor = UIColor(
                red: 0x00/255,
                green: 0x00/255,
                blue: 0x00/255,
                alpha: 1.0)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
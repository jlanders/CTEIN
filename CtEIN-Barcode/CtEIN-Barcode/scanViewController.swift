//
//  scanVewController.swift
//  CtEIN-Barcode
//
//  Created by James Landers on 2/3/16.
//  Copyright © 2016 James Landers. All rights reserved.
//

import UIKit

class scanViewController: RSCodeReaderViewController {
    
    @IBOutlet weak var viewBarCode: UIView!
    
     var finalObject: ibuiltcode?
    //allow objecthelper = objectbuilder()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.focusMarkLayer.strokeColor = UIColor.redColor().CGColor

        self.cornersLayer.strokeColor = UIColor.yellowColor().CGColor
        
        self.tapHandler = { point in
            print(point)
        }
        
        self.barcodesHandler = { barcodes in
            for barcode in barcodes {
                print("Barcode found: type=" + barcode.type + " value=" + barcode.stringValue)
                
                //if allow builtobject = self.objecthelper.validateandbuild(barcode,scanneddata: barcode.stringvalue) {
                    print("good object.")
                    //self.finalobject = builtobject
                    self.session.stoprunning() // avoid scanning multiple times
                    self.performqr()
                    break
                //}
            }
        }
        
        
        
    }
    
    func performqr(){
        dispatch_async(dispatch_get_main_queue(), { () -> void in
            self.performseguewithidentifier("toqr", sender: self)
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

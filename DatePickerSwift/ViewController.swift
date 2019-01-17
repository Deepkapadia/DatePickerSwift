//
//  ViewController.swift
//  DatePickerSwift
//
//  Created by MAC OS on 5/24/17.
//  Copyright © 2017 MAC OS. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var txt: UITextField!
    @IBOutlet weak var dtp: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = Date();
        let frm = DateFormatter();
        frm.dateFormat="dd-MM-yyyy";
        txt.text=frm.string(from: date);
        
        dtp.isHidden=true;

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        dtp.isHidden = false;
        return false;
    }

    @IBAction func dtpAction(_ sender: Any) {
        let date = dtp.date;
        let frm = DateFormatter();
        frm.dateFormat="dd-MM-yyyy";
        txt.text=frm.string(from: date);
        dtp.isHidden=true;
        
    }

}


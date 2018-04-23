//
//  ViewController.swift
//  demoUserDefault
//
//  Created by Chien on 4/14/18.
//  Copyright © 2018 Chien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtText: UITextField!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtText.text = defaults.string(forKey: "Age")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSelect(_ sender: Any) {
        defaults.set(txtText.text, forKey: "Age")
    }
    
}


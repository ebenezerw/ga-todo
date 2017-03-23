//
//  SecondViewController.swift
//  Ga-Todo
//
//  Created by Ebenezer Williams on 3/23/17.
//  Copyright © 2017 Ebenezer & Hannah. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func item(_ sender: AnyObject)
        
    {
        if(input.text != "")
        {
            list.append(input.text!)
            input.text = ""
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


//
//  FirstViewController.swift
//  Ga-Todo
//
//  Created by Ebenezer Williams on 3/23/17.
//  Copyright © 2017 Ebenezer & Hannah. All rights reserved.
//

import UIKit

// This is the lists of tasks which is set as a global variable.

var list = ["Build a Swift App", "Build a MEAN app", "Learn React Native", "Complete Final Project"]

// This allows the FirstViewController to make use of the methods in the below ui elements.

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var myTableView: UITableView!
    
    //This allows all items in the list to be repeated on the first view controller
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (list.count)
    }
    
    
    //this allows each item in the list to appear in its own cell so we can perform crud actions on individual items
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    
    //allows you to delete items from the list
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            
            //reloads the view after deleting an item
            
            myTableView.reloadData()
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
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


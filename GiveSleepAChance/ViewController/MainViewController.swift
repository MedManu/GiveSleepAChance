//
//  MainViewController.swift
//  GiveSleepAChance
//
//  Created by Manuel Medwed on 14.02.19.
//  Copyright © 2019 Manuel Medwed. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var loadBtn: NSLayoutConstraint!
    
    
    var list = ["Manuel","Fabienne","Barbara"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //anzahl an rows abhängig von der größer der Liste
        
        return (list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Liste veröffentlichen in View
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cellForTestPerson")
        //cell Text der List geben
        cell.textLabel?.text = list[indexPath.row]
        
        return cell

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    
    @IBAction func signOutBtn(_ sender: Any) {
        print("SignoutBtn tapped")
    }
    

    
    @IBAction func loadList(_ sender: Any) {
        
        print("Load List")
    }
    

    
}

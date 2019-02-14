//
//  MainViewController.swift
//  GiveSleepAChance
//
//  Created by Manuel Medwed on 14.02.19.
//  Copyright © 2019 Manuel Medwed. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

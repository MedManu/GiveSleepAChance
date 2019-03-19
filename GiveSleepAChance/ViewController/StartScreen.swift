//
//  ViewController.swift
//  GiveSleepAChance
//
//  Created by Manuel Medwed on 14.02.19.
//  Copyright © 2019 Manuel Medwed. All rights reserved.
//

import UIKit

class StartScreen: UIViewController {

    let username = "Manuel"
    let password = "geb16"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



    @IBAction func userNamefield(_ sender: Any) {
    }
    

    
    @IBAction func passwordfield(_ sender: Any) {
    }
    
    
    @IBAction func loginBtn(_ sender: Any) {
        
        print("Login was tapped")
    }
    
    
    
    @IBAction func forgotPwd(_ sender: Any) {
        
        let forgotPWDController = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        
       self.present(forgotPWDController, animated: true)
    }
    
    @IBAction func createNewUser(_ sender: Any) {
        print("New User Tapped")
        //verweis auf Storyboard für neuen User verbimndung von Identifier und Name des Storyboards
        let registerViewController = self.storyboard?.instantiateViewController(withIdentifier: "NewUserViewController" ) as! NewUserViewController
        
        //presentation
        self.present(registerViewController, animated: true )
        
    }
}



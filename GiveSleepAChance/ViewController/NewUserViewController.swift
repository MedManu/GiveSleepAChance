//
//  ViewControllerforLogin.swift
//  GiveSleepAChance
//
//  Created by Manuel Medwed on 14.02.19.
//  Copyright © 2019 Manuel Medwed. All rights reserved.
//

import UIKit

class NewUserViewController: UIViewController {

    
    

    @IBOutlet var mailAdress: UITextField!
    @IBOutlet var addPassword: UITextField!
    @IBOutlet var repeatPassword: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func cancel(_ sender: Any) {
        print("cancel was pressed")
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func signUp(_ sender: Any) {
        
//        sicherstellen das textfelder nicht leer sind
        if (mailAdress.text?.isEmpty)! ||
           (addPassword.text?.isEmpty)! || (repeatPassword.text?.isEmpty)! {
            
//            Alarm Message zeigen
            return
        }
//        sicherstellen das Password richtig wiederholt wird
        
        if((addPassword.text?.elementsEqual(repeatPassword.text!)) != true){
            
//            Alarm anzeigen
            return
        }
    }
//    funktion für den Alarm
    func displayMessagr(userMessage : String) -> Void {
        DispatchQueue.main.async {
            let alerController = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "Ok", style: .default) {
                (action:UIAlertAction!) in
//                Dieser code wird ausgelöst wenn der Ok Button gedrückt wird
                print("OK button tapped")
                DispatchQueue.main.async {
                    self.dismiss(animated: true, completion: nil)
                }
            }
            alerController.addAction(OKAction)
            self.present(alerController, animated: true, completion: nil)
        }
    }
    
}

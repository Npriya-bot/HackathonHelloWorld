//
//  SignupViewController.swift
//  HackathonProjectSingle
//
//  Created by Neha Priyadarshini on 15/9/19.
//  Copyright © 2019 Akshi J. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    var finalUsername = ""
    var finalPassword = ""
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
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

    @IBAction func loginButton(_ sender: Any) {
        
//        if userName.text == finalUsername && password.text == finalPassword{
//
//        }
//        else{
//            let alertController = UIAlertController(title: "Error", message:
//                "Password or Username is incorrect", preferredStyle: .alert)
//            alertController.addAction(UIAlertAction(title: "Try Again", style: .default))
//
//            self.present(alertController, animated: true, completion: nil)
//        }
    }
    
    @IBAction func registerHereButton(_ sender: Any) {
    }
    
}

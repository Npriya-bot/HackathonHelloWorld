//
//  RegisterViewController.swift
//  HackathonProjectSingle
//
//  Created by Neha Priyadarshini on 15/9/19.
//  Copyright © 2019 Akshi J. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBAction func Register(_ sender: Any) {
        
        
    }
    
    @IBOutlet weak var userFirstName: UITextField!
    
    @IBOutlet weak var userLastName: UITextField!
    @IBOutlet weak var userUsername: UITextField!
    
    @IBOutlet weak var userEmail: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    @IBOutlet weak var userPasswordConfirm: UITextField!
    
    @IBOutlet weak var yayText: UILabel!
    
    @IBOutlet weak var other: UILabel!
    var firstNameEntered = ""
    var lastNameEntered = ""
    var userNameEntered = ""
    var emailEntered = ""
    var passwordEntered = ""
    var confirmPasswordEntered = ""
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
    @IBAction func registerButton(_ sender: UIButton) {
        let firstNameEntered = userFirstName.text
        let lastNameEntered = userLastName.text
        userUsername.text = userNameEntered
        userEmail.text = emailEntered
        let passwordEntered = userPassword.text
        let confirmPasswordEntered = userPasswordConfirm.text
        if passwordEntered == confirmPasswordEntered{
            performSegue(withIdentifier: "signupToLogin", sender: self)
        }
        else{
            let alertController = UIAlertController(title: "Error", message:
                "Passwords do not match", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Try Again", style: .default))
            
            self.present(alertController, animated: true, completion: nil)
        }
//        }
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            var vc = segue.destination as! SignupViewController
            vc.finalUsername = self.userUsername.text!
            vc.finalPassword = self.userPasswordConfirm.text!
            
        }
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        var vc = segue.destination as! SignupViewController
//
//    }
//
}

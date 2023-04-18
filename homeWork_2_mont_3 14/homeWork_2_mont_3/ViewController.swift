//
//  ViewController.swift
//  homeWork_2_mont_3
//
//  Created by Аяз on 14/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var signLabel: UILabel!
    
    
    @IBOutlet weak var emailIdLabel: UILabel!
    
    
    @IBOutlet weak var idTextField: UITextField!
    
    
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var passwordTxtField: UITextField!
    
    
    @IBOutlet weak var dontHaveAcc: UILabel!
    

    
    
        
       override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
    
    @IBAction func signInButton(_ sender: Any) {
        if idTextField.text?.isEmpty ?? true {
            idTextField.layer.borderWidth = 2
            idTextField.layer.borderColor = UIColor.red.cgColor
            idTextField.placeholder = "Пожалуйста, заполните!"
        }
        if passwordTxtField.text?.isEmpty ?? true {
            passwordTxtField.layer.borderWidth = 2
            passwordTxtField.layer.borderColor = UIColor.red.cgColor
            passwordTxtField.placeholder = "Пожалуйста, заполните!"
        }
        if idTextField.text?.isEmpty == false &&
            passwordTxtField.text?.isEmpty == false {
            let successVC = self.storyboard?.instantiateViewController(withIdentifier: "FiveViewController") as! FiveViewController
            self.navigationController?.pushViewController(successVC, animated: false)
        }
        
        
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
            let forgotPwdVC = self.storyboard?.instantiateViewController(withIdentifier:"TherdViewController") as! TherdViewController
            self.navigationController?.pushViewController(forgotPwdVC, animated: false)
        }
    
    
    @IBAction func singUpButton(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secondVC, animated: false)
    }
    
    
    
}

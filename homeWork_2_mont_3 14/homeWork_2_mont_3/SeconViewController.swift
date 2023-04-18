//
//  SeconViewController.swift
//  homeWork_2_mont_3
//
//  Created by Аяз on 17/4/23.
//


import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var cinfirmPasswordTextField: UITextField!

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var mobileNumberTextField: UITextField!
    
    @IBOutlet weak var fullNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpButton(_ sender: Any) {
        if passwordTextField.text?.isEmpty ?? true {
            passwordTextField.layer.borderWidth = 2
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.placeholder = "Пожалуйста, заполните!"
        }
        if cinfirmPasswordTextField.text?.isEmpty ?? true {
            cinfirmPasswordTextField.layer.borderWidth = 2
            cinfirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
            cinfirmPasswordTextField.placeholder = "Пожалуйста, заполните!"
        }
        if userNameTextField.text?.isEmpty ?? true {
            userNameTextField.layer.borderWidth = 2
            userNameTextField.layer.borderColor = UIColor.red.cgColor
            userNameTextField.placeholder = "Пожалуйста, заполните!"
        }
        if emailTextField.text?.isEmpty ?? true {
            emailTextField.layer.borderWidth = 2
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.placeholder = "Пожалуйста, заполните!"
        }
        if mobileNumberTextField.text?.isEmpty ?? true {
            mobileNumberTextField.layer.borderWidth = 2
            mobileNumberTextField.layer.borderColor = UIColor.red.cgColor
            mobileNumberTextField.placeholder = "Пожалуйста, заполните!"
        }
        if fullNameTextField.text?.isEmpty ?? true {
            fullNameTextField.layer.borderWidth = 2
            fullNameTextField.layer.borderColor = UIColor.red.cgColor
            fullNameTextField.placeholder = "Пожалуйста, заполните!"
        }
        if passwordTextField.text?.isEmpty == false &&
            cinfirmPasswordTextField.text?.isEmpty == false && userNameTextField.text?.isEmpty == false && userNameTextField.text?.isEmpty == false && emailTextField.text?.isEmpty == false && mobileNumberTextField.text?.isEmpty == false && fullNameTextField.text?.isEmpty == false{
            let successVC = self.storyboard?.instantiateViewController(withIdentifier: "FiveViewController") as! FiveViewController
            self.navigationController?.pushViewController(successVC, animated: false)
        }
    }
    @IBAction func signInButton(_ sender: Any) {
        let VC = self.storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(VC, animated: false)

    }



}

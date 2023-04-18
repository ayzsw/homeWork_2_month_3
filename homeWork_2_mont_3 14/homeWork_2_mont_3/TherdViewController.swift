//
//  TherdViewController.swift
//  homeWork_2_mont_3
//
//  Created by Аяз on 17/4/23.
//

import UIKit

class TherdViewController: UIViewController {
    
    @IBOutlet weak var employeeidLabel: UILabel!
    
    @IBOutlet weak var uiview: UIView!
    @IBOutlet weak var idTF: UITextField!
       // idTF.isEnabled = false

    
    @IBOutlet weak var numberidTF: UITextField!
    
    
    override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
     }
    
  
    @IBAction func getOTPButton(_ sender: Any) {
        if numberidTF.text?.isEmpty ?? true {
            numberidTF.layer.borderWidth = 2
            numberidTF.layer.borderColor = UIColor.red.cgColor
            numberidTF.placeholder = "Пожалуйста, заполните!"
            idTF.isEnabled = false
        }
        if numberidTF.text?.isEmpty == false{
            idTF.isEnabled = true
        }
    }
    
    @IBAction func submitButton2(_ sender: Any) {
        if idTF.text?.isEmpty == false{
            let successVC2 = self.storyboard?.instantiateViewController(withIdentifier: "FourViewController") as! FourViewController
            self.navigationController?.pushViewController(successVC2, animated: false)
        }
        if idTF.text?.isEmpty ?? true {
            idTF.layer.borderWidth = 2
            idTF.layer.borderColor = UIColor.red.cgColor
            idTF.placeholder = "Пожалуйста, заполните!"
  
        }
    }
    
}

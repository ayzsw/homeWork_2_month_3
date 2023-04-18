//
//  FourthViewController.swift
//  homeWork_2_mont_3
//
//  Created by Аяз on 17/4/23.
//

import UIKit

class FourViewController: UIViewController {

    @IBOutlet weak var newPswTF: UITextField!
    
    @IBOutlet weak var confirmpswTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submit(_ sender: Any) {
        if newPswTF.text?.isEmpty ?? true {
            newPswTF.layer.borderWidth = 2
            newPswTF.layer.borderColor = UIColor.red.cgColor
            newPswTF.placeholder = "Пожалуйста, заполните!"
        }
        if confirmpswTF.text?.isEmpty ?? true {
            confirmpswTF.layer.borderWidth = 2
            confirmpswTF.layer.borderColor = UIColor.red.cgColor
            confirmpswTF.placeholder = "Пожалуйста, заполните!"
        }
        if newPswTF.text?.isEmpty == false &&
            confirmpswTF.text?.isEmpty == false {
            let successVC4 = self.storyboard?.instantiateViewController(withIdentifier: "FiveViewController") as! FiveViewController
            self.navigationController?.pushViewController(successVC4, animated: false)
        }
    }
    


}

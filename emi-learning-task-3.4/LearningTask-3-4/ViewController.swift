//
//  ViewController.swift
//  LeaningTasks-3-4
//
//  Created by Raphael on 08/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        showLoginAlert()
    }
    
    @IBAction func ForgotPasswordPressed(_ sender: UIButton) {
        showForgotPasswordAlert()
    }
    
    func showLoginAlert() {
        let alert = UIAlertController(
            title: "Logando",
            message: "Fazendo login na sua conta...",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        self.present(alert, animated: true)
    }
    
    func showForgotPasswordAlert() {
        guard let email = emailTextField.text else { return }
        
        let alert = UIAlertController(
            title: "Redefinir senha",
            message: "Enviamos um email para \(email). Siga as instruções para criar uma nova senha segura.",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        self.present(alert, animated: true)
    }
}

//
//  MainViewController.swift
//  LearningTask-3-3
//
//  Created by Raphael on 08/04/23.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func MainButtonPressed(_ sender: UIButton) {
        showConfirmationAlert()
    }
    
    func showConfirmationAlert() {
        guard let email = emailTextField.text else { return }
                
        let alert = UIAlertController(
            title: "Tudo pronto",
            message: "Email \(email) cadastrado com sucesso.\nEm breve você começará a receber oportunidades imperdíveis.",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        self.present(alert, animated: true)
    }
    
}


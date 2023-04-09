//
//  ViewController.swift
//  LearningTask-3-5
//
//  Created by Raphael on 08/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var activityTextField: UITextField!
    @IBOutlet weak var professionalTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func mainButtonPressed(_ sender: UIButton) {
        showReviewAlert()
    }
    
    private func showReviewAlert() {
        let nameMessage = "Nome: \(nameTextField.text!)\n"
        let emailMessage = "Email: \(emailTextField.text!)\n"
        let activityMessage = "Área de Atuação: \(activityTextField.text!)\n"
        let statusProfessionalMessage = "Status Professional: \(professionalTextField.text!)"
        
        
        let alert = UIAlertController(
            title: "Quase lá",
            message: "Antes de enviarmos, por favor, revise seus dados:\n\n\(nameMessage)\(emailMessage)\(activityMessage)\(statusProfessionalMessage)",
            preferredStyle: .actionSheet
        )
        
        alert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: showConfirmationAlert))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel))
        
        self.present(alert, animated: true)
    }
    
    private func showConfirmationAlert(_ action: UIAlertAction) {
        let confirmationAlert = UIAlertController(
            title: "Feito!",
            message: "Verifique seu email e tenha acesso ao documento.",
            preferredStyle: .alert
        )
        
        confirmationAlert.addAction(UIAlertAction(title: "Ok!", style: .default))
        
        self.present(confirmationAlert, animated: true)
    }
    
}


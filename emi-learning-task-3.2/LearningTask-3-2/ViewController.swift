//
//  ViewController.swift
//  LearningTask-3-2
//
//  Created by rafael.rollo on 17/01/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func transferConfirmationButton(_ sender: UIButton) {
        showTransferConfirmationAlert()
    }
    
    func showTransferConfirmationAlert() {
        let alert = UIAlertController(
            title: "Tudo pronto",
            message: "Estamos verificando a transação.\nEm instantes você deve receber uma notificação com a confirmação da transferência.",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        self.present(alert, animated: true)
    }
    
}


//
//  ViewController.swift
//  iQuizAlura
//
//  Created by Wagner Duarte on 08/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    @IBAction func botaoPressionado(_ sender: Any) {
        print("O botao foi precionado")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configuraLayout()
    }
    
    func configuraLayout(){
        navigationItem.hidesBackButton = true
        botaoIniciarQuiz.layer.cornerRadius = 12.0
    }
    
}


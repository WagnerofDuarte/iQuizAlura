//
//  DesempenhoViewController.swift
//  iQuizAlura
//
//  Created by Wagner Duarte on 09/08/23.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    var pontuacao: Int?

    @IBOutlet weak var resulatadoLabel: UILabel!
    @IBOutlet weak var percentualLabel: UILabel!
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarDesempenho()
        
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        botaoReiniciarQuiz.layer.cornerRadius = 12.0
    }
    
    func configurarDesempenho(){
        guard let pontuacao = pontuacao else { return }
        resulatadoLabel.text = "Você acertou \(pontuacao) de \(questoes.count) questões!"
        let percentual = (pontuacao * 100) / (questoes.count)
        percentualLabel.text = "Percentual final: \(percentual)%"
    }
    
}

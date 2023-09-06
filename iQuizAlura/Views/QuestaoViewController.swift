//
//  QuestaoViewController.swift
//  iQuizAlura
//
//  Created by Wagner Duarte on 09/08/23.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao: Int = 0
    var numeroQuestao: Int = 0
    

    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    @IBOutlet var botoesRespostas: [UIButton]!
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        
        let acertou = questoes[numeroQuestao].respostaCorreta == sender.tag
        
        if acertou {
            pontuacao += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
            print("acertou")
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 161/255, blue: 53/255, alpha: 1.0)
            print("errou")
        }
        
        if numeroQuestao < questoes.count - 1 {
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else {
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(navegaParaTelaDesempenho), userInfo: nil, repeats: false)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configuraLayout()
        configurarQuestao()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        desempenhoVC.pontuacao = pontuacao
    }
    
    @objc func navegaParaTelaDesempenho(){
        print("teste")
        performSegue(withIdentifier: "irParaDesempenho", sender: nil)
    }
    
    func configuraLayout(){
        
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        
        navigationItem.hidesBackButton = true
        
        for botao in botoesRespostas {
            botao.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configurarQuestao(){
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        for botao in botoesRespostas {
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
}

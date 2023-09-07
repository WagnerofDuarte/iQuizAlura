//
//  Questao.swift
//  iQuizAlura
//
//  Created by Wagner Duarte on 09/08/23.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
Questao(titulo: "Qual o meme mais famoso da Wanessa Wolf?", respostas: ["Numanice", "Vc ta doido?", "Romagagagaga"], respostaCorreta: 0),
Questao(titulo: "Em que ano Vingadores Ultimato foi lançado?", respostas: ["2023", "2009", "2019"], respostaCorreta: 2),
Questao(titulo: "Qual a sub-classe mais apelona no Destiny 2", respostas: ["Arcstrider", "Voidwalker", "Striker"], respostaCorreta: 2),
Questao(titulo: "Porque Destiny 2 é uma decepcao?", respostas: ["Pq a Bungie só faz cagada", "O jogo tá caro p caramba", "Sou hater"], respostaCorreta: 0),
Questao(titulo: "Porque Destiny 2 é uma maraviliha?", respostas: ["Pq a Bungie é perfeira", "Pq o jogo é gratis", "Sou lover"], respostaCorreta: 0),
Questao(titulo: "Qual a empresa que voce trabalha?", respostas: ["Google", "DTI Crafters", "Itau"], respostaCorreta: 1),
Questao(titulo: "Quantas vezes o Lula foi eleito? ", respostas: ["4", "3", "1"], respostaCorreta: 1),
Questao(titulo: "O aquecimento global vai matar geral?", respostas: ["Com certeza", "Vai nada, isso é invenção", "É só fazer um super ar condicionado"], respostaCorreta: 0),
Questao(titulo: "Porque a vida é tão difícil?", respostas: ["Pq sim", "Pq vc n é milionário", "..."], respostaCorreta: 1),
Questao(titulo: "Quantas temporadas tem á série 'Vai que Cola'", respostas: ["3", "4", "6"], respostaCorreta: 2)]

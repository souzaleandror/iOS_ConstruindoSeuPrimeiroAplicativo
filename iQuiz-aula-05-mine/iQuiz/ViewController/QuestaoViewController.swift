//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Leandro Rodrigues on 19.07.23.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0

    @IBOutlet weak var points: UILabel!
    @IBOutlet weak var countQuestions: UILabel!
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    @IBOutlet var botoesRespostas: [UIButton]!
    
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        print(sender.tag)
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag
        
        if(usuarioAcertouResposta) {
            pontuacao += 1
            points.text = "Points: \(pontuacao)"
            print("O usuario acertou.A pontucao = \(pontuacao)")
            sender.backgroundColor = UIColor.corDeFundoVerde
        } else {
            print("O usuario error.A pontucao = \(pontuacao)")
            sender.backgroundColor = UIColor.corDeFundoVermelho
        }
        
        if numeroQuestao < (questoes.count - 1) {
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else {
            navegaParaTelaDesempenho()
        }
        
    }
    
    func navegaParaTelaDesempenho() {
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configurarLayout()
        configurarQuestao()
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        
        for botao in botoesRespostas {
            botao.layer.cornerRadius = 12.0
        }
    }
    
    
    @objc func configurarQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        countQuestions.text = "\(numeroQuestao + 1) / \(questoes.count)"
        points.text = "Points: \(pontuacao)"
        
        for botao in botoesRespostas {
            let title = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(title, for: .normal)
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        
        desempenhoVC.pontuacao = pontuacao
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

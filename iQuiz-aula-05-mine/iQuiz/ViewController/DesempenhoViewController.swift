//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Leandro Rodrigues on 21.07.23.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    var pontuacao: Int?;

    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var percentualLabel: UILabel!
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configurarLayout()
        configurarDesempenho()
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        botaoReiniciarQuiz.layer.cornerRadius = 12.0
    }
    
    func configurarDesempenho() {
        guard let pontucao = pontuacao else {return}
        
        resultadoLabel.text = "Voce acertou \(pontucao) de \(questoes.count)!!"
        
        let percentual = (pontucao * 100) / questoes.count
        
        percentualLabel.text = "Percentual \(percentual)%"
        
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

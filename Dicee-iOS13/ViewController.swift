//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutled significa Interface Builder Outled. O que permite ao usuário alterar as propriedades de um elemento da interface.
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 0
    var rightDiceNumber = 6
    let diceImages = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Assim que a tela é carregada, esse método é chamado.
        
        // Para selecionar uma imagem diretamente dos assets da aplicação, digite "imageliteral". ASsim, vai aparecer uma caixa de seleção, onde você vai escolher a imagem que quer atribuir à variável.
//        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
//        alpha é a propriedade de opacidade.
//        diceImageView1.alpha = 0.5
//        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
//        diceImageView2.alpha = 0.3
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // @IBAction significa Interface Builder Action, o que permite ao usuário programar algum comportamento quando o usuário interage com os elementos da interface.
        //Esse método foi criado quando criamos a conexão do botão com o script ViewController.
        
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
        
        // Outras formas de randomização:
        // Int.random(in: 0..<5) -> O intervalo aqui não inclui o 5
        // Float.random(in: 1...3) -> gera floats aleatoriamente
        // Bool.random() -> gera aleatoriamente true ou false
        // array.randomElement() -> pega um elemento de um array aleatoriamente
        // array.shuffle -> embaralha os elementos de um array
        
        print("Você pressionou o botão Roll!")
        print("Número a ser exibido na esquerda: \(leftDiceNumber)")
        print("Número a ser exibido na direita: \(rightDiceNumber)")
    
        diceImageView1.image = diceImages[leftDiceNumber]
        diceImageView2.image = diceImages[rightDiceNumber]
        
    }
}


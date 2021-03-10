//
//  ViewController.swift
//  Alcool ou Gasolina
//
//  Created by Henrique Silva on 10/09/20.
//  Copyright © 2020 Henrique Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var legendaResultado: UILabel!
    @IBOutlet weak var precoAlcoolCampo: UITextField!
    @IBOutlet weak var precoGasolinaCampo: UITextField!
    
    @IBAction func calcularPreco(_ sender: Any){
        
        if let precoAlcool = precoAlcoolCampo.text{
            if let precoGasolina = precoGasolinaCampo.text {
                let validaCampos = validarCampos(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                if validaCampos {
                    calcularMelhorPreco(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                }
                else if validaCampos {
                    legendaResultado.text = "Digite o preço para calcular"
                }
            }
        }
    }
    
    func calcularMelhorPreco(precoAlcool: String, precoGasolina: String){
        if let valorAlcool = Double(precoAlcool){
            if let valorGasolina = Double(precoGasolina){
                let resultadoPreco = valorAlcool / valorGasolina
                if resultadoPreco >= 0.7 {
                    legendaResultado.text = "Melhor utilizar Gasolina!"
                }
                else{
                    legendaResultado.text = "Melhor utilizar Álcool!"
                }
            }
        }
    }
    
    func validarCampos(precoAlcool: String, precoGasolina: String) -> Bool {
        var camposValidos = true
        if precoAlcool.isEmpty{
            camposValidos = false
        }
        else if precoGasolina.isEmpty{
            camposValidos = false
        }
        return camposValidos
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

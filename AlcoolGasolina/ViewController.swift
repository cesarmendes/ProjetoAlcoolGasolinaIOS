//
//  ViewController.swift
//  AlcoolGasolina
//
//  Created by Cesar Mendes da Silva on 30/09/2017.
//  Copyright © 2017 Cesar Mendes da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtGasolinaValor: UITextField!
    @IBOutlet weak var txtAlcoolValor: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    
    @IBAction func btnCalcular_Click(_ sender: Any) {
        let strValorGasolina = txtGasolinaValor.text ?? ""
        let strValorAlcool = txtAlcoolValor.text ?? ""
        
        if !strValorGasolina.isEmpty && !strValorAlcool.isEmpty
        {
            let decValorGasolina = Float(strValorGasolina)
            let decValorAlcool = Float(strValorAlcool)
            
            if decValorAlcool != nil && decValorGasolina != nil
            {
                if (decValorAlcool! / decValorGasolina!) >= 0.7
                {
                    lblResultado.text = "Melhor usar Gasolina"
                }
                else
                {
                    lblResultado.text = "Melhor usar Alcool"
                }
            }
            else
            {
               lblResultado.text = "Digite os preços primeiro!"
            }
        }
        else
        {
            lblResultado.text = "Digite os preços primeiro!"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


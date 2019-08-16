//
//  ConfirmarAssistenciaViewController.swift
//  iProvide
//
//  Created by Carlos Cunha, Yan Ajiki, Gabriel Stable, Suellen Rosenberg.
//  Copyright © 2019 Providence, iAssist, iProvide - All rights reserved.
//

import UIKit

class ConfirmarAssistenciaViewController: UIViewController {
    
    //Variavel local do valor inicial da doacao
    var valor = "250"
    
    //Outlet para renderizacao dinamica do valor
    @IBOutlet var valorADoar: UILabel!
    
    //Action que implementa o slider que incrementa ou decrementa o valor
    @IBAction func valorSlider(_ sender: UISlider) {
        self.valorADoar.text = String(sender.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.valorADoar.text = self.valor + " R$"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

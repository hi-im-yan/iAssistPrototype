//
//  DetalheAssistenciaViewController.swift
//  iProvide
//
//  Created by Carlos Cunha, Yan Ajiki, Gabriel Stable, Suellen Rosenberg.
//  Copyright © 2019 Providence, iAssist, iProvide - All rights reserved.
//

import UIKit

class DetalheAssistenciaViewController: UIViewController {
    
    //Variaveis receptoras de dados
    var historia = "", titulo = "", image:UIImage = UIImage()
    
    
    //Outlets par aexibicao dinamica de conteudo
    @IBOutlet var historiaTextView: UITextView!
    @IBOutlet var tituloLabel: UILabel!
    @IBOutlet var imageViewer: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Carrega o conteudo dos receptores para os outlets
        historiaTextView.insertText(historia)
        tituloLabel.text = titulo
        imageViewer.image = image

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

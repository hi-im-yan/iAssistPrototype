//
//  ArquivoViewController.swift
//  iProvide
//
//  Created by Carlos Cunha, Yan Ajiki, Gabriel Stable, Suellen Rosenberg.
//  Copyright © 2019 Providence, iAssist, iProvide - All rights reserved.
//

import UIKit

class ArquivoViewController: UIViewController {
    
    //Variaveis receptoras de dados
    var tituloDaAjuda : String?
    var descricaoDaAjuda : String?
    var historiaDaAjuda : String?
    var imagemDaAjuda : UIImage?
    
   
    //Outlets para exibicao dinamica de conteudo
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var historiaLabel: UILabel!
    
    //Action para armazenar a solicitacao de assistencia no mock storage
    @IBAction func SubmitButton(_ sender: Any) {
        Store.setAssistencia(
            Assistencia(titulo: tituloDaAjuda!,
                        descricao: descricaoDaAjuda!,
                        historia: historiaDaAjuda!,
                        imagem: imagemDaAjuda!))
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Carrega o conteudo dos receptores para os outlets
        tituloLabel.text = tituloDaAjuda
        descricaoLabel.text = descricaoDaAjuda
        historiaLabel.text = historiaDaAjuda
        photoImage.image = imagemDaAjuda
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

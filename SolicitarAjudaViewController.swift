//
//  SolicitarAjudaViewController.swift
//  iProvide
//
//  Created by Carlos Cunha, Yan Ajiki, Gabriel Stable, Suellen Rosenberg.
//  Copyright © 2019 Providence, iAssist, iProvide - All rights reserved.
//

import UIKit

//Extende as classes necessarias para a manipulacao das imagens e dos campos
class SolicitarAjudaViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UITextFieldDelegate {
    
    //Outlets para exibicao dinamica de conteudo
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet weak var tituloText: UITextField!
    @IBOutlet weak var descricaoText: UITextField!
    @IBOutlet weak var historiaText: UITextField!
    
    //Action para importar a imagem do dispositivo do usuario
    @IBAction func importImage(_ sender: Any) {
        let image = UIImagePickerController()
        
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing = false
        self.present(image, animated: true){
            
        }
    }
    
    //Funcao do seletor da imagem que faz o carregamento do dispositivo para o app
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            myImageView.image = image
        }
        else{
            print("Algo deu errado ao carregar a imagem")
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Configura o Dismiss do Teclado para cliques fora do teclado
        tituloText.delegate = self
        let tap1: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SolicitarAjudaViewController.dismissKeyboard))
        view.addGestureRecognizer(tap1)
        
        descricaoText.delegate = self
        let tap2: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SolicitarAjudaViewController.dismissKeyboard))
        view.addGestureRecognizer(tap2)
        
        historiaText.delegate = self
        let tap3: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SolicitarAjudaViewController.dismissKeyboard))
        view.addGestureRecognizer(tap3)
    }
    
    //O dismiss do teclado
    func dismissKeyboard() {
        descricaoText.resignFirstResponder()
        historiaText.resignFirstResponder()
        tituloText.resignFirstResponder()
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //Segue que envia os dados para a view  de confimacao para entao persistir os dados
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toArquivo" {
            if let destinationView = segue.destination as? ArquivoViewController {
                destinationView.tituloDaAjuda = tituloText.text
                destinationView.descricaoDaAjuda = descricaoText.text
                destinationView.historiaDaAjuda = historiaText.text
                destinationView.imagemDaAjuda = myImageView.image
            }
        }
        
        
    }}

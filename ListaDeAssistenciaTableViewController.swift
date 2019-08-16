//
//  ListaDeAssistenciaTableViewController.swift
//  iProvide
//
//  Created by Carlos Cunha, Yan Ajiki, Gabriel Stable, Suellen Rosenberg.
//  Copyright © 2019 Providence, iAssist, iProvide - All rights reserved.
//

import UIKit

class ListaDeAssistenciaTableViewController: UITableViewController {
    
    //Vetor local que consome o mock storage para exibir as solicitacoes cadastradas
    var assistencias = [Assistencia]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /** 
    * Antes de renderizar a view realiza o fetch na mock storage
    * para obter os dados mais recentes de assistencias 
    **/
    override func viewWillAppear(_ animated: Bool) {
        /**
         *
         *   Metodo Handshake Bruteforce de atualizacao da view
         *   By: Thrashattack
         *
         *   @Param{ extends UIView }: A view a ser atualizada
         *   @return: a lista atualizada
         *
         **/
        assistencias = Store.getAssistencias(tv: tableView)
        assistencias = Store.getAssistencias(tv: tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assistencias.count
    }

    
    //Renderizacao da celula e passagem de parametros para os Outlets
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AssistenciaCell", for: indexPath)
        
        let assistencia = assistencias[indexPath.row]
        
        if let destinationCell = cell as? ListaDeAssistenciaTableViewCell {
            destinationCell.imageViewer.image = assistencia.imagem
            destinationCell.tituloLabel.text = assistencia.titulo
            destinationCell.descricaoTextView.insertText(assistencia.descricao)
            destinationCell.upVote.text = String(assistencia.upVote)
            destinationCell.downVote.text = String(assistencia.downVote)
        }

        return cell
    }
    
    //Segue disparada ao clicar na celula para exibir os detalhes da assistencia em questao
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationView = segue.destination as? DetalheAssistenciaViewController {
            let assistencia = assistencias[(tableView.indexPathForSelectedRow?.row)!]
            destinationView.image = assistencia.imagem
            destinationView.titulo = assistencia.titulo
            destinationView.historia = assistencia.historia
        }
        
    }
    

}

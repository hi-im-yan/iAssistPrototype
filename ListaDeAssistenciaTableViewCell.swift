//
//  ListaDeAssistenciaTableViewCell.swift
//  iProvide
//
//  Created by Carlos Cunha, Yan Ajiki, Gabriel Stable, Suellen Rosenberg.
//  Copyright © 2019 Providence, iAssist, iProvide - All rights reserved.
//

import UIKit

class ListaDeAssistenciaTableViewCell: UITableViewCell {
    
    //variaveis locais para refletir os inteiros de incremento para upVote e downVote
    var up = 0
    var down = 0
    
    //Outlets para exibicao dinamica de conteudo
    @IBOutlet var imageViewer: UIImageView!
    @IBOutlet var tituloLabel: UILabel!
    @IBOutlet var descricaoTextView: UITextView!
    @IBOutlet var downVote: UILabel!
    @IBOutlet var upVote: UILabel!
    
    //Action de upVote
    @IBAction func upButton(_ sender: UIButton) {
        self.upVote.text = String(self.up + 1)
        up += 1
    }
    //Action de downVote
    @IBAction func downButton(_ sender: UIButton) {
        self.downVote.text = String(self.down + 1)
        down += 1
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

//
//  Assistencia.swift
//  iProvide
//
//  Created by Carlos Cunha, Yan Ajiki, Gabriel Stable, Suellen Rosenberg.
//  Copyright © 2019 Providence, iAssist, iProvide - All rights reserved.
//

import UIKit
import Foundation


//Modelo da assistencia
class Assistencia {
    
    var titulo: String
    var descricao: String
    var historia: String
    var imagem: UIImage
    var upVote: Int = 0
    var downVote: Int = 0
    
    init(titulo: String, descricao: String, historia: String, imagem: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.historia = historia
        self.imagem = imagem
    }
}


//Dao que Mocka uma lista de assistencias
class AssistenciaDAO {
    
    static func mock() -> [Assistencia] {
        return [
            Assistencia(titulo: "Ajuda urgente", descricao: "Necessitamos de ajuda de 200 reais urgente",
                        historia: "Breve historia sobre o que aconteceu com essas pessoas que a levaram a esta solicitacao", imagem: UIImage(named: "1")!),
            Assistencia(titulo: "Ajuda rapido", descricao: "Necessitamos de ajuda de 100 reais urgente",
                        historia: "Breve historia sobre o que aconteceu com essas pessoas que a levaram a esta solicitacao", imagem: UIImage(named: "1")!),
            Assistencia(titulo: "Ajuda agora", descricao: "Necessitamos de ajuda de 50 reais urgente",
                        historia: "Breve historia sobre o que aconteceu com essas pessoas que a levaram a esta solicitacao", imagem: UIImage(named: "1")!),
            Assistencia(titulo: "Socorro urgente", descricao: "Necessitamos de ajuda de 500 reais urgente",
                        historia: "Breve historia sobre o que aconteceu com essas pessoas que a levaram a esta solicitacao", imagem: UIImage(named: "1")!),
            Assistencia(titulo: "Atencao urgente", descricao: "Necessitamos de ajuda de 150 reais urgente",
                        historia: "Breve historia sobre o que aconteceu com essas pessoas que a levaram a esta solicitacao", imagem: UIImage(named: "1")!
            )
        ]
    }
}


//Mock Storage para simular persistencia
class Store {
    private static var assistencias = AssistenciaDAO.mock()
    static func setAssistencia (_ assistencia: Assistencia) {
        self.assistencias.append(assistencia)
    }
    
    static func getAssistencia(index: Int) -> Assistencia {
        return self.assistencias[index]
    }
    static func getAssistencias(tv: UITableView) -> [Assistencia] {
        tv.reloadData()
        return self.assistencias
    }
    static func setAssistencias(_ assist: [Assistencia]) {
        self.assistencias = assist
}
}

//
//  Filme.swift
//  Meus Filmes
//
//  Created by aluno on 02/09/19.
//  Copyright © 2019 aluno. All rights reserved.
//
import UIKit
import Foundation

class Filme {
    var titulo:String!
    var descricao:String!
    var imagem:UIImage!
    
    init(titulo:String, descricao:String,imagem:UIImage){
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
        }
    
    
}

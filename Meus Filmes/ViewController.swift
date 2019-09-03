//
//  ViewController.swift
//  Meus Filmes
//
//  Created by aluno on 02/09/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var filmes:[Filme] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...5 {
            var nomeImagem:String  = "filme\(i)"
            var filme = Filme.init(titulo: "Filme \(i)", descricao: "Descricao \(i)",imagem: (UIImage.init(named: "filme\(i)"))!)
            filmes.append(filme)
        }
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme:Filme = filmes[indexPath.row]
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for:indexPath) as! FilmeCelula
        
        
        
        celula.filmeImageView.image = filme.imagem
        celula.labelTitulo.text = filme.titulo
        celula.labelDescricao.text = filme.descricao
        //celula.filmeImageView.layer.cornerRadius = 42
        //celula.filmeImageView.clipsToBounds = true
        return celula
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "detalheFilme"){
            if let indexPath = tableView.indexPathForSelectedRow{
                let filmeSelecionado = self.filmes[indexPath.row]
                let vcDestino = segue.destination as! DetalhesFilmeViewController
                
                vcDestino.filme = filmeSelecionado
            }
        }
    }

    
   


}


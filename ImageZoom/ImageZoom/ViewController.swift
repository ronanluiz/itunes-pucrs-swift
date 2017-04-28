//
//  ViewController.swift
//  ImageZoom
//
//  Created by admin on 4/27/17.
//  Copyright © 2017 Rlzsystem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var imagesArray: [(name: String, image: String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagesArray = [("Praia", "img1"), ("Cachoeira", "img2"), ("Montanha", "img3"), ("Floresta", "img4")]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        tableViewCell.textLabel?.text = imagesArray[indexPath.row].name
        
        return tableViewCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! DetailViewController
        
        // Recupera o indice da celula selecionada
        let indexPath = tableView.indexPath(for: sender as! UITableViewCell) as NSIndexPath?
        
        // Configura o parametro para o detalhe conforme o item selecionado
        detailViewController.imageSelected = imagesArray[indexPath!.row].image
        
        
    }
    
}


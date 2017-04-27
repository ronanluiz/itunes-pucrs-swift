//
//  ViewController.swift
//  TableViewExemplo
//
//  Created by admin on 4/26/17.
//  Copyright © 2017 Rlzsystem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var frutas = ["Abacate", "Abacaxi", "Acelora", "Ameixa", "Banana", "Caju", "Carambola", "Damasco", "Figo", "Goiaba", "Graviola", "Jaca", "Laranja", "Melao", "Pessego", "Pitanga", "Roma", "Tangerina", "Uva"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomTableViewCell {
        
            cell.descricaoLabel.text = frutas[indexPath.row]
        
            cell.numeroLabel.text = String(indexPath.row + 1)
        
            return cell
        } else {
            
            return UITableViewCell()
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frutas.count
    }

}


//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Berkay Köse on 24.06.2019.
//  Copyright © 2019 Berkay Köse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var simpsonsArray = [Simpson]()
    var chosenSimpson = Simpson()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let bart = Simpson()
        bart.name = "Bart Simpson"
        bart.job = "Student"
        bart.image = UIImage(named: "bart")!
        
        let homer = Simpson()
        homer.name = "Homer Simpson"
        homer.job = "Nuclear Technician"
        homer.image = UIImage(named: "homer")!
        
        let marge = Simpson()
        marge.name = "Marge Simpson"
        marge.job = "Housewife"
        marge.image = UIImage(named: "marge")!
        
        let maggie = Simpson()
        maggie.name = "Maggie Simpson"
        maggie.job = "Singer"
        maggie.image = UIImage(named: "maggie")!
        
        let lisa = Simpson()
        lisa.name = "Lisa Simpson"
        lisa.job = "Student"
        lisa.image = UIImage(named: "lisa")!
        
        simpsonsArray.append(bart)
        simpsonsArray.append(homer)
        simpsonsArray.append(marge)
        simpsonsArray.append(maggie)
        simpsonsArray.append(lisa)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonsArray.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageVC" {
            let destinationVC = segue.destination as! ImageViewController
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = simpsonsArray[indexPath.row]
        performSegue(withIdentifier: "toImageVC", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonsArray[indexPath.row].name
        return cell
    }


}


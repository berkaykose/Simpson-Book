//
//  ImageViewController.swift
//  SimpsonBook
//
//  Created by Berkay Köse on 24.06.2019.
//  Copyright © 2019 Berkay Köse. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson = Simpson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = selectedSimpson.image
        nameLabel.text = selectedSimpson.name
        jobLabel.text = selectedSimpson.job
        
    }


}

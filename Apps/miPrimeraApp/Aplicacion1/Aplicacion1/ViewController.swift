//
//  ViewController.swift
//  Aplicacion1
//
//  Created by AIOC on 3/4/19.
//  Copyright © 2019 AIOC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBAction func boton(_ sender: UIButton) {
    label.text = "hola"
       view.backgroundColor = UIColor.green
    }
        
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
    



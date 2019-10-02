//
//  ViewController.swift
//  AppBanda
//
//  Created by ENRIQUE VERGARA  on 9/30/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelBanda: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var btnDisc: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelBanda.translatesAutoresizingMaskIntoConstraints = false
        labelBanda.heightAnchor.constraint(equalToConstant: 80).isActive = true
        labelBanda.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant : 5).isActive = true
        labelBanda.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant : 5).isActive = true
        labelBanda.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant : 5).isActive = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.heightAnchor.constraint(equalToConstant: 150).isActive = true
        image.widthAnchor.constraint(equalToConstant: 150).isActive = true
        image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant : 100).isActive = true
        image.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant : 100).isActive = true
        image.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant : -100).isActive = true
        
        lbl1.translatesAutoresizingMaskIntoConstraints = false
        lbl1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        lbl1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant : 260).isActive = true
        lbl1.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant : 15).isActive = true
        
        
        
        lbl2.translatesAutoresizingMaskIntoConstraints = false
        lbl2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        lbl2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant : 260).isActive = true
        lbl2.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant : -15).isActive = true
        
//        btnDisc.translatesAutoresizingMaskIntoConstraints = false
//        btnDisc.topAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.topAnchor, constant : 320).isActive = true
//        btnDisc.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
    }


}


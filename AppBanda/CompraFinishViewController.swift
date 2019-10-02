//
//  CompraFinishViewController.swift
//  AppBanda
//
//  Created by ENRIQUE VERGARA  on 9/30/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class CompraFinishViewController: UIViewController {

    @IBOutlet weak var total: UILabel!
    var precio : String!
    override func viewDidLoad() {
        super.viewDidLoad()
        total.text = precio
    }
    
}

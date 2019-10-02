//
//  RespTriviaViewController.swift
//  AppBanda
//
//  Created by ENRIQUE VERGARA  on 9/30/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class RespTriviaViewController: UIViewController {

    @IBOutlet weak var resp: UILabel!
    @IBOutlet weak var code: UILabel!
    var exview : TriviaViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        code.textColor = .white
        resp.textColor = .white
        resp.text = exview.respuestas[0]
        code.text = exview.respuestas[1]
        exview.initComponents()
    }

}

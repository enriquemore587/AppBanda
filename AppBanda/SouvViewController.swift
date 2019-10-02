//
//  SouvViewController.swift
//  AppBanda
//
//  Created by ENRIQUE VERGARA  on 9/30/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class SouvViewController: UIViewController {

    @IBOutlet weak var precioFut: UILabel!
    @IBOutlet weak var precioBaloncesto: UILabel!
    @IBOutlet weak var codigo: UITextField!
    @IBOutlet weak var cantidadF: UITextField!
    @IBOutlet weak var cantidadB: UITextField!
    var total : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        navigationItem.title = "Souvenirs"
        precioFut.text = "500"
        precioBaloncesto.text = "500"
    }
    
    @IBAction func comprar(_ sender: UIButton) {
        if cantidadF.text! == "" && cantidadB.text! == "" {
            alerta("Completa todos los campos")
            return
        }
        let cant1 : String = cantidadF.text! == "" ? "0" : cantidadF.text!
        let cant2 : String = cantidadB.text! == "" ? "0" : cantidadB.text!
        total = (Float(cant1)! * Float(precioFut.text!)!) + (Float(cant2)! * Float(precioBaloncesto.text!)!)
        if codigo.text! != "" {
            if codigo.text! == "k" {
                total = total / 2
            } else {
                alerta("Código inválido")
            }
        }
        let compra = storyboard?.instantiateViewController(withIdentifier: "compra") as! CompraFinishViewController
        compra.precio = "\(total)"
        navigationController?.pushViewController(compra, animated: true)
    }
    
    func alerta(_ msg : String) {
        let alert = UIAlertController(title: "Error", message: msg, preferredStyle: .alert)
        let entendido = UIAlertAction(title: "Entendido", style: .default, handler: nil)
        alert.addAction(entendido)
        present(alert, animated: true)
    }
    
}

//
//  TriviaViewController.swift
//  AppBanda
//
//  Created by ENRIQUE VERGARA  on 9/30/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class TriviaViewController: UIViewController {
    
    
    
    @IBOutlet weak var r1: UISwitch!
    @IBOutlet weak var r2: UISwitch!
    @IBOutlet weak var r3: UISwitch!
    @IBOutlet weak var r4: UISwitch!
    @IBOutlet weak var r5: UISwitch!
    
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var l5: UILabel!
    
    @IBOutlet weak var btnRevisar: UIButton!
    
    var respuestas : [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        btnRevisar.layer.cornerRadius = 3
        btnRevisar.backgroundColor = UIColor.darkGray
        btnRevisar.titleLabel?.textColor = .white
        initComponents()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func changeValue(_ sender: UISwitch) {
        switch sender.tag {
            case 1:
                l1.text = r1.isOn ? "SI" : "NO"
                break
            case 2:
                l2.text = r2.isOn ? "SI" : "NO"
                break
            case 3:
                l3.text = r3.isOn ? "SI" : "NO"
                break
            case 4:
                l4.text = r4.isOn ? "SI" : "NO"
                break
            case 5:
                l5.text = r5.isOn ? "SI" : "NO"
                break
            default:
                print("no debe de pasar")
        }
    }
    
    @IBAction func revisar(_ sender: UIButton) {
        let viewResult = storyboard?.instantiateViewController(withIdentifier: "resp") as! RespTriviaViewController
        viewResult.exview = self
        if r1.isOn && !r2.isOn && r3.isOn && r4.isOn && !r5.isOn {
            respuestas.append("FELICIDADES")
            respuestas.append("21KD91")
        } else {
            respuestas.append("ERROR")
            respuestas.append("INTENTALO DE NUEVO")
        }
        navigationController?.pushViewController(viewResult, animated: true)
    }
    
    func initComponents() {
        respuestas = [String]()
        l1.text = "NO"
        l2.text = "NO"
        l3.text = "NO"
        l4.text = "NO"
        l5.text = "NO"
        
        r1.isOn = false
        r2.isOn = false
        r3.isOn = false
        r4.isOn = false
        r5.isOn = false
    }
}

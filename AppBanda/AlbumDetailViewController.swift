//
//  AlbumDetailViewController.swift
//  AppBanda
//
//  Created by ENRIQUE VERGARA  on 9/30/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class AlbumDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var album : Album!
    
    @IBOutlet weak var tabla: UITableView!
    @IBOutlet weak var labelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        tabla.tableFooterView = UIView()
        tabla.backgroundColor = .black
        tabla.separatorColor = .white
        tabla.rowHeight = CGFloat(90)
        labelName.text = album.name
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .done, target: self, action: #selector(showinfo))
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return album.canciones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = album.canciones[indexPath.row]
        cell.backgroundColor = .clear
        cell.textLabel?.textColor = .white
        cell.textLabel?.textAlignment = .center
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @objc func showinfo() {
        let info = storyboard?.instantiateViewController(withIdentifier: "info") as! UIViewController
        present(info, animated: true, completion: nil)
    }
}

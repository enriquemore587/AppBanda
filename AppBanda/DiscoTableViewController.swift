//
//  DiscoTableViewController.swift
//  AppBanda
//
//  Created by ENRIQUE VERGARA  on 9/30/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class DiscoTableViewController: UITableViewController {
    
    var albums : [Album] = [
        Album("Queen", ["Keep Yourself Alive", "Doing All Right", "Great King Rat", "My Fairy King"]),
        Album("Queen II", ["White Queen (As It Began)", "Ogre Battle", "The March of the Black Queen"]),
        Album("Sheer Heart Attack", ["Keep Yourself Alive", "Doing All Right", "Great King Rat", "My Fairy King"]),
        Album("A Night at the Opera", ["White Queen (As It Began)", "Ogre Battle", "The March of the Black Queen"]),
        Album("A Day at the Races", ["Keep Yourself Alive", "Doing All Right", "Great King Rat", "My Fairy King"]),
        Album("News of the World", ["White Queen (As It Began)", "Ogre Battle", "The March of the Black Queen"]),
        Album("Jazz", ["Keep Yourself Alive", "Doing All Right", "Great King Rat", "My Fairy King"]),
        Album("The Game", ["White Queen (As It Began)", "Ogre Battle", "The March of the Black Queen"])
    ]
    var position : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        tableView.tableFooterView = UIView()
        tableView.separatorColor = .white
        tableView.rowHeight = CGFloat(90)

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return albums.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = albums[indexPath.row].name
        cell.backgroundColor = UIColor.clear
        cell.textLabel?.textColor = .white
        cell.textLabel?.textAlignment = .center
        cell.imageView?.image = UIImage(named: "album")
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let albumDetail = segue.destination as! AlbumDetailViewController
//        albumDetail.album = albums[position]
//    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        print(albums[indexPath.row].name)
        position = indexPath.row
        return indexPath
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = storyboard?.instantiateViewController(withIdentifier: "detail") as! AlbumDetailViewController
        detail.album = albums[position]
        navigationController?.pushViewController(detail, animated: true)
    }

}

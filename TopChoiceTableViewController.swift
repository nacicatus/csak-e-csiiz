//
//  TopChoiceTableViewController.swift
//  ttcnCodeGenerator
//
//  Created by Saurabh Sikka on 2017. 02. 18..
//  Copyright © 2017. Sauron. All rights reserved.
//

import UIKit

class TopChoiceTableViewController: UITableViewController {
    
    var nodeData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearsSelectionOnViewWillAppear = true
        let path = Bundle.main.path(forResource: "NodeData", ofType: "plist")
        let nodeDictionary = NSDictionary(contentsOfFile: path!)
        nodeData = nodeDictionary!.object(forKey: "TelecomNode") as! [String]
        
//        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return nodeData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NodeCell", for: indexPath)
        cell.textLabel!.text = nodeData[indexPath.row]
        
        if (cell.accessoryType == .checkmark) {
            cell.accessoryType = .none;
        } else {
            cell.accessoryType = .checkmark;
        }
        
        return cell
    }
    
    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
    }
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NodeCell", for: indexPath)

        if (cell.accessoryType == .checkmark) {
            cell.accessoryType = .none;
        } else {
            cell.accessoryType = .checkmark;
        }
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}

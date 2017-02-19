//
//  TopChoiceTableViewController.swift
//  ttcnCodeGenerator
//
//  Created by Saurabh Sikka on 2017. 02. 18..
//  Copyright © 2017. Sauron. All rights reserved.
//

import UIKit

class TopChoiceTableViewController: UITableViewController {
    
    // Create an array of strings to populate the table from a source plist
    var nodeData = [String]()
    
    // Create another array to store the chosen nodes
    var chosenNode = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.allowsMultipleSelection = true
        
//        self.clearsSelectionOnViewWillAppear = false
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
        let iconName: String = nodeData[indexPath.row]
        cell.imageView!.image = UIImage.init(named: iconName)
        cell.accessoryType = .none;

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
        
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
        chosenNode.append((cell?.textLabel?.text)!)
        
        let destinationName = nodeData[indexPath.row]
        let destinationVC = storyboard!.instantiateViewController(withIdentifier: destinationName) as UIViewController
        self.navigationController?.pushViewController(destinationVC, animated: true)
        

    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        if (cell?.accessoryType == .checkmark) {
            cell?.accessoryType = .none
        }
        self.tableView.deselectRow(at: indexPath, animated: true)   
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
    }
    

}

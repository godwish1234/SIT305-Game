//
//  InventoryViewController.swift
//  SIT305
//
//  Created by GODWISH JAKIN on 2/4/18.
//  Copyright © 2018 GODWISH JAKIN. All rights reserved.
//

import UIKit
import SwiftyJSON

class InventoryViewController: UITableViewController {

    var NumberofRows = 0
    var NamesArray = [String]()
    var AgeArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        parseJSON()
        
    }
    
    
    //parsing with the json file
    func parseJSON(){
        
        let path : String = Bundle.main.path(forResource: "jsonFile", ofType: "json") as String!
        let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
        
        /*
        let jsonData = NSData(contentsOfFile: path) as NSData!
        let readableJSON = try? JSON(data: jsonData as! Data, options: JSONSerialization.ReadingOptions.mutableContainers)
        */
        
        
        let jsonString = try? String(contentsOfFile: path, encoding: String.Encoding.utf8)
        let json = JSON(parseJSON: jsonString!)
        
        var Person = "Person"
        //var Name = readableJSON!["People"][Person]["Name"].string as String!
        

    /*
        if let data = path.data(using: .utf8) {
            if let json = try? JSON(data: data) {
                for item in json["people"].arrayValue {
                    print(item["firstName"].stringValue)
                }
            }
        }*/
        
        
        //NamesArray.append(Name!)
        
        //NSLog("\(Name)")
        
        
        
        NumberofRows = json["People"].count
        
    
        for i in 0...NumberofRows {
            var Person = "Person"
            Person += "\(i)"
            var Name = json["People"][Person]["Name"].string
            var Age = json["People"][Person]["Age"].string
            
            //NSLog("\(Name)")
            //NSLog("\n")
            NamesArray.append(Name!)
            AgeArray.append(Age!)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NumberofRows
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UITableViewCell

        // Configure the cell...
        
        if NamesArray.count != 0 {
            
            cell.textLabel?.text = NamesArray[indexPath.row]
            
        }

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

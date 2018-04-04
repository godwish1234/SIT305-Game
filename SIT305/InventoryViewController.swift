//
//  InventoryViewController.swift
//  SIT305
//
//  Created by GODWISH JAKIN on 2/4/18.
//  Copyright © 2018 GODWISH JAKIN. All rights reserved.
//

import UIKit

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
        let url = URL(fileURLWithPath: path)
        
        do {
            let data = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            //print(json)
            
            guard let array = json as? [Any] else {return}
            NumberofRows = array.count
            
            for user in array {
                
                guard let userDict = user as? [String: Any] else {return}
                guard let userID = userDict["id"] as? Int else {print("not an Int"); return}
                guard let name = userDict["name"] as? String else {return}
                guard let company = userDict["company"] as? [String:String] else {return}
                guard let companyName = company["name"] else {return}
                
                /*
                print(userID)
                print(name)
                print(company)
                print(companyName)
                */

                NamesArray.append(name)
            }
            
        }
        catch {
            print(error)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NumberofRows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UITableViewCell
        
        if NamesArray.count != 0 {
            cell.textLabel?.text = NamesArray[indexPath.row]
        }

        return cell
    }

}

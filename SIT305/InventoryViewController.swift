//
//  InventoryViewController.swift
//  SIT305
//
//  Created by GODWISH JAKIN on 2/4/18.
//  Copyright © 2018 GODWISH JAKIN. All rights reserved.
//

import UIKit

class InventoryViewController: ViewController, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var NumberofItems = 0
    var NamesArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        parseJSON()
        
    }
    
    //parsing with the json file
    func parseJSON(){
        
        collectionView.dataSource = self
        
        let path : String = Bundle.main.path(forResource: "items", ofType: "json") as String!
        let url = URL(fileURLWithPath: path)
        
        do {
            let data = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            //print(json)
            
            guard let array = json as? [Any] else {return}
            NumberofItems = array.count
            
            for items in array {
                
                guard let userDict = items as? [String: Any] else {return}
                //guard let ID = userDict["id"] as? Int else {print("not an Int"); return}
                guard let name = userDict["itemName"] as? String else {return}
                
                NamesArray.append(name)
            }
            
        }
        catch {
            print(error)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return NumberofItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! InventoryCollectionViewCell
        
        if NamesArray.count != 0 {
            cell.text.text = NamesArray[indexPath.row]
        }
        
        return cell
    }

}

//
//  GameViewController.swift
//  SIT305
//
//  Created by GODWISH JAKIN on 2/4/18.
//  Copyright © 2018 GODWISH JAKIN. All rights reserved.
//

import UIKit
import Foundation

class GameViewController: UIViewController {

<<<<<<< HEAD
=======
    let jsonString = "[" +
        "{" +
    "   \"id\":\"8\"" +
    "}" +
    " ]"
    
<<<<<<< HEAD
=======
>>>>>>> f28d627bf1b71e16c1523edba2451d0b94595b41
    
    
>>>>>>> 650900b962b20cbb0927b4d5bfffc6d67c29a938
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
<<<<<<< HEAD
    @IBAction func Booster(_ sender: UIButton) {
        
    
        let jalur = "items"
        
        
        
        let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
       
        if let fileURL = dir?.appendingPathComponent(jalur).appendingPathExtension("json"){
            
            let value = "Handphone"
            
            do{
                
            try value.write(to: fileURL, atomically: false, encoding: .utf8)
                
            print(fileURL)
            
        }
        catch let error as NSError{
            print("Failed to store into the URL")
            print (error)
            }
            
            var inString = ""
            
            do{
                inString = try String (contentsOf: fileURL)
            }
            catch
            {
                print("Erro reading" + error.localizedDescription)
            }
            print("Read From the file: \(inString)")
    }
        
        //let dict = NSMutableDictionary()
        //dict.setValue(value, forKey: "name")
        //dict.write(to: url, atomically: true)
=======
    @IBAction func save(_ sender: UIButton) {
        
        var test: [AnyObject] = []
        var dict: [String: AnyObject] = [:]
        dict["id"] = "8" as AnyObject
        test.append(dict as AnyObject)
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: test, options: .prettyPrinted)
            let fileManager = FileManager.default
            let url = try fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            let jsonURL = url.appendingPathComponent("items.json")
            //print(jsonURL)
            
            //try jsonData.write(to: jsonURL)
        }
        catch{
            
        }
        
        var inString = ""
        
        do{
            let fileManager = FileManager.default
            let url = try fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            let jsonURL = url.appendingPathComponent("items.json")
            inString = try String (contentsOf: jsonURL)
        }
        catch
        {
            print("Erro reading" + error.localizedDescription)
        }
        print("Read From the file: \(inString)")
>>>>>>> f28d627bf1b71e16c1523edba2451d0b94595b41
        
        
    }
    
<<<<<<< HEAD

=======
<<<<<<< HEAD
=======
    
    
>>>>>>> f28d627bf1b71e16c1523edba2451d0b94595b41
>>>>>>> 650900b962b20cbb0927b4d5bfffc6d67c29a938
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



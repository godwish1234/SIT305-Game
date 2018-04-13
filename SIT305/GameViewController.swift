//
//  GameViewController.swift
//  SIT305
//
//  Created by GODWISH JAKIN on 2/4/18.
//  Copyright © 2018 GODWISH JAKIN. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

<<<<<<< HEAD

=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 175ee6910d52c41c4be1d0055c234dfd5f604ea9
    let jsonString = "[" +
        "{" +
    "   \"id\":\"8\"" +
    "}" +
    " ]"
<<<<<<< HEAD




=======
    
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> f28d627bf1b71e16c1523edba2451d0b94595b41
    
    
>>>>>>> 650900b962b20cbb0927b4d5bfffc6d67c29a938
=======
    
    
>>>>>>> parent of a62a4ad... 10th commit
=======
>>>>>>> parent of f28d627... 9th Commit
=======
>>>>>>> parent of f28d627... 9th Commit
>>>>>>> 175ee6910d52c41c4be1d0055c234dfd5f604ea9
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
<<<<<<< HEAD


=======
    
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 175ee6910d52c41c4be1d0055c234dfd5f604ea9
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

    @IBAction func save(_ sender: UIButton) {

        /*
        let dataFromString: Data? = jsonString.data(using: String.Encoding.utf8)

        guard let data = dataFromString else {
            print("error")
            return
        }

        do {
            let parsedData = try JSONSerialization.jsonObject(with: data, options: []) as! [[String:Any]]
        } catch let error {
            print(error)
        }
        */

        /*
        let fileName = "item"

        let file: FileHandle? = FileHandle(forWritingAtPath: "items.json")
        if file != nil {
            do {
                if let jsonData = try JSONSerialization.data(withJSONObject: fileName, options: .init(rawValue: 0)) as? Data
                {
                    print(NSString(data: jsonData, encoding: 1)!)
                    file?.write(jsonData)
                }
            }
            catch {

            }
            file?.closeFile()
        }
        else{
            print("something went wrong")
        }
 */

        /*
        let file = "items"



        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first


        if let fileURL = dir?.appendingPathComponent(file).appendingPathExtension("json"){



            var inString = ""
            do {
                inString = try String(contentsOf: fileURL)
            } catch {
                print("Failed reading from URL: \(fileURL), Error: " + error.localizedDescription)
            }
            print("Read from the file: \(inString)")


        }*/

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

        /*
        do {

            let fileManager = FileManager.default
            let url = try fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            let jsonURL = url.appendingPathComponent("items.json")
            let data = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            print(json)

        }
        catch {
            print(error)
        }*/

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



    }
<<<<<<< HEAD


=======
    
<<<<<<< HEAD
<<<<<<< HEAD

=======
<<<<<<< HEAD
=======
    
    
>>>>>>> f28d627bf1b71e16c1523edba2451d0b94595b41
>>>>>>> 650900b962b20cbb0927b4d5bfffc6d67c29a938
=======
    
    
>>>>>>> parent of a62a4ad... 10th commit
=======

>>>>>>> parent of f28d627... 9th Commit
=======

>>>>>>> parent of f28d627... 9th Commit
>>>>>>> 175ee6910d52c41c4be1d0055c234dfd5f604ea9
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

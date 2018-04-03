//
//  ViewController.swift
//  SIT305
//
//  Created by GODWISH JAKIN on 23/3/18.
//  Copyright © 2018 GODWISH JAKIN. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

  
    @IBOutlet var MenuView: UIView!
    @IBOutlet weak var VisualEffectView: UIVisualEffectView!
    
    var effect: UIVisualEffect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
<<<<<<< HEAD
       // effect = VisualEffectView.effect
        // VisualEffectView.effect = nil
=======
        effect = VisualEffectView.effect
        VisualEffectView.effect = nil
        
        parseJSON()
        
>>>>>>> 6b9e2fb3e5f3b0b2fff9172443509584a5808ee2
    }
    
    func animateIn() {
        
        self.view.addSubview(MenuView)
        MenuView.center = self.view.center
        MenuView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        MenuView.alpha = 0
        
        UIView.animate(withDuration: 0.4){
            
            //self.VisualEffectView.effect = self.effect
            self.MenuView.alpha = 1
            self.MenuView.transform = CGAffineTransform.identity
        }
    }
    
    func animateOut(){
        UIView.animate(withDuration: 0.3, animations: {
            self.MenuView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.MenuView.alpha = 0
            //self.VisualEffectView.effect = nil
        }) { (succes:Bool) in
            self.MenuView.removeFromSuperview()
        }
    }
    
    //parsing with the json file
    func parseJSON(){
        
        let bundle = Bundle.main
        let path : String = bundle.path(forResource: "jsonFile", ofType: "json") as String!
        let jsonString = try? String(contentsOfFile: path, encoding: String.Encoding.utf8)
        let json = JSON(parseJSON: jsonString!)

        var Name = json["People"]
        
        //NSLog("\(Name)")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SettingPopUp(_ sender: UIButton) {
        animateIn()
        
    }
    
    @IBAction func ExitMenu(_ sender: UIButton) {
        animateOut()
    }
}


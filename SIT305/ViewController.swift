//
//  ViewController.swift
//  SIT305
//
//  Created by GODWISH JAKIN on 23/3/18.
//  Copyright © 2018 GODWISH JAKIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet var MenuView: UIView!
    @IBOutlet weak var VisualEffectView: UIVisualEffectView!
    
    var effect: UIVisualEffect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // effect = VisualEffectView.effect
        // VisualEffectView.effect = nil
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


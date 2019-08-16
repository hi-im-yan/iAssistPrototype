//
//  LauncherViewController.swift
//  iProvide
//
//  Created by Carlos Henrique Souza da Cunha on 15/08/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class LauncherViewController: UIViewController {

    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.label1.center.x = view.center.x
        self.label1.center.x -= view.bounds.width
        
        self.label2.center.x -= view.center.x
        self.label2.center.x = view.bounds.width
        
        UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseOut], animations: {
            
            self.label1.center.x += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseOut], animations: {
            
            self.label2.center.x += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
    }

}

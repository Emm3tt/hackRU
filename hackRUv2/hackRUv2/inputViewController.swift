//
//  inputViewController.swift
//  hackRUv2
//
//  Created by Emmett Duffy on 10/19/19.
//  Copyright © 2019 Emmett Duffy. All rights reserved.
//

import UIKit

protocol DataDelegate {
    
    func printThisString(string: String)
    
}

class inputViewController: UIViewController, DataDelegate {
    func printThisString(string: String) {
        print(string)
    }
    

    
    
    @IBOutlet weak var goingTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    
    var go = "dab"
    var tiempo = "lit"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        perform(#selector(advance), with: nil, afterDelay: 2)

        // Do any additional setup after loading the view.
    }
    
    @objc func advance() {
        
        let vc = commuteViewController()
        vc.delegate = self
        present(commuteViewController(),animated:true,completion:nil)
        
    }
    
 
    
    @IBAction func doneAction(_ sender: Any)    
                                                                            
    {
        
        
        go = goingTextField.text!
        
        
       
        
    }
    
   
    
    
 

}
 
 
 
 
 

//
//  homeViewController.swift
//  hackRUv2
//
//  Created by Emmett Duffy on 10/19/19.
//  Copyright © 2019 Emmett Duffy. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    @IBOutlet weak var timeLable: UILabel!

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) {
            // this is the code that the timer runs every second
            (_:Timer)->Void in //  the Timer object is passed in, but we ignore it
           self.getTime()
        }

        
        
            
        // Do any additional setup after loading the view.
    }
    
    func getTime() {
        
        let currentDateTime = Date()

             let dateFormatter = DateFormatter()
             dateFormatter.timeStyle = .medium;

        
             timeLable.text = "\(dateFormatter.string(from: currentDateTime))"
          
        
    }
    
   
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

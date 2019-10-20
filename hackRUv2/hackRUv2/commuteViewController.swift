//
//  commuteViewController.swift
//  hackRUv2
//
//  Created by Emmett Duffy on 10/19/19.
//  Copyright © 2019 Emmett Duffy. All rights reserved.
//

import UIKit


struct CellData{
    
    let message: String?
   
}



class commuteViewController: UITableViewController {
    
    
    var delegate : DataDelegate?
 
    var data = [CellData]()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
  
        delegate?.printThisString(string: "move this to our first view controller")
         

        
        data = [CellData.init(message: "Location: Bus stop --- Time: 9AM"),CellData.init(message: "Location: Work --- Time: 10AM"),CellData.init(message: "Location: Dinner --- Time: 7PM"),CellData.init(message: "These cells were filled with what you have to do for the day and showed "),CellData.init(message: "your schedule but were not implemented in just hard coded for show")]
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
            
        
       
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        
        cell.message = data[indexPath.row].message
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
        
        
    

}

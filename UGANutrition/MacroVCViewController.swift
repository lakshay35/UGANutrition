//
//  MacroVCViewController.swift
//  UGANutrition
//
//  Created by Lakshay Sharma on 5/25/17.
//  Copyright © 2017 Lakshay Sharma. All rights reserved.
//

import UIKit

class MacroVCViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var detailView: UIView!

    var data = ["hello":"hello"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        detailView.backgroundColor = UIColor.red
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 11
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "macro", for: indexPath) as! macroTableViewCell
        
        
        switch(indexPath.row) {
        case 0:
            cell.title.text = "Total Calories"
            cell.value.text = self.data["calories"]
        case 1:
            cell.title.text = "Calories From fat"
            cell.value.text = self.data["calories-from-fat"]
        case 2:
            cell.title.text = "Total Fat"
            cell.value.text = self.data["total-fat"]!
        case 3:
            cell.title.text = "     Saturated Fat"
            cell.value.text = self.data["sat-fat"]!
        case 4:
            cell.title.text = "     Trans Fat"
            cell.value.text = self.data["trans-fat"]!
        case 5:
            cell.title.text = "Cholestrol"
            cell.value.text = self.data["cholesterol"]!
        case 6:
            cell.title.text = "Sodium"
            cell.value.text = self.data["sodium"]!
        case 7:
            cell.title.text = "Total Carbohydrate"
            cell.value.text = self.data["total-carb"]!
        case 8:
            cell.title.text = "     Dietary Fiber"
            cell.value.text = self.data["dietary-fiber"]!
        case 9:
            cell.title.text = "     Sugars"
            cell.value.text = self.data["sugars"]!
        case 10:
            cell.title.text = "Protein"
            cell.value.text = self.data["protein"]!
        default:
            cell.title.text = "N/A"
            cell.value.text = "N/A"
        }
        
        
        // Configure the cell...
        
        return cell
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

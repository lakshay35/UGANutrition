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
    @IBOutlet weak var foodRating: UILabel!

    var data = ["hello":"hello"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        foodRating.text = getRating()
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
            if(self.data["calories"] == " ") {
                cell.value.text = "N/A"
            } else {
                cell.value.text = self.data["calories"]
            }
        case 1:
            cell.title.text = "Calories From fat"
            if(self.data["calories-from-fat"] == " ") {
                cell.value.text = "N/A"
            } else {
                cell.value.text = self.data["calories-from-fat"]
            }
        case 2:
            cell.title.text = "Total Fat"
            if(self.data["total-fat"] == " ") {
                cell.value.text = "N/A"
            } else {
                cell.value.text = self.data["total-fat"]
            }
            cell.backgroundColor = UIColor.yellow
        case 3:
            cell.title.text = "     Saturated Fat"
            if(self.data["sat-fat"] == " ") {
                cell.value.text = "N/A"
            } else {
                cell.value.text = self.data["sat-fat"]
            }
        case 4:
            cell.title.text = "     Trans Fat"
            if(self.data["trans-fat"] == " ") {
                cell.value.text = "N/A"
            } else {
                cell.value.text = self.data["trans-fat"]
            }
        case 5:
            cell.title.text = "Cholestrol"
            if(self.data["cholesterol"] == " ") {
                cell.value.text = "N/A"
            } else {
                cell.value.text = self.data["cholesterol"]
            }
        case 6:
            cell.title.text = "Sodium"
            if(self.data["sodium"] == " ") {
                cell.value.text = "N/A"
            } else {
                cell.value.text = self.data["sodium"]
            }
        case 7:
            cell.title.text = "Total Carbohydrate"
            if(self.data["total-carb"] == " ") {
                cell.value.text = "N/A"
            } else {
                cell.value.text = self.data["total-carb"]
            }
            cell.backgroundColor = UIColor.red
        case 8:
            cell.title.text = "     Dietary Fiber"
            if(self.data["dietary-fiber"] == " ") {
                cell.value.text = "N/A"
            } else {
                cell.value.text = self.data["dietary-fiber"]
            }
        case 9:
            cell.title.text = "     Sugars"
            if(self.data["sugars"] == " ") {
                cell.value.text = "N/A"
            } else {
                cell.value.text = self.data["sugars"]
            }
        case 10:
            cell.title.text = "Protein"
            if(self.data["protein"] == " ") {
                cell.value.text = "N/A"
            } else {
                cell.value.text = self.data["protein"]
            }
            cell.backgroundColor = UIColor(red: 0.0, green: 128.0, blue: 255.0, alpha: 1.0)
        default:
            cell.title.text = "N/A"
            cell.value.text = "N/A"
        }
        
        
        // Configure the cell...
        
        return cell
    }


    func getDoubleFromString(value: String) -> Double {
        var stringValue = value
        let index = stringValue.index(stringValue.startIndex, offsetBy: stringValue.characters.count - 1)
        stringValue = stringValue.substring(to: index)
        return (NumberFormatter().number(from: stringValue)?.doubleValue)!
    }
    
    func getIntFromString(value: String) -> Int {
        return (NumberFormatter().number(from: value)!.intValue)
    }
    
    
    func getRating() -> String {
        
        var returnString = ""
        
        
        let fat = getDoubleFromString(value: self.data["total-fat"]!)
        let carb = getDoubleFromString(value: self.data["total-carb"]!)
        let protein = getDoubleFromString(value: self.data["protein"]!)
        let calories = getIntFromString(value: self.data["calories"]!)
        
        let carbRatio = (carb / (carb + fat + protein)) * 100
        let fatRatio = (fat / (carb + fat + protein)) * 100
        let proteinRatio = (protein / (carb + fat + protein)) * 100
        
        if(carbRatio >= 60 && calories > 50) {
            returnString = "Need some energy. Eat this and become energized with all the carbohydrates in this food"
        } else if (proteinRatio >= 50 && calories > 50) {
            returnString = "Did you just workout? Eat this to reward all that hardwork"
        } else if (fatRatio >= 30 && calories > 50) {
            returnString = "This is a little high in fat but it will satiate hunger"
        } else if (fatRatio >= 30 && calories > 50 && proteinRatio >= 30) {
            returnString = "This will fill you up and prevent you from getting hungry"
        } else {
            returnString = "Try this, you might like it"
        }
        
        return returnString
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

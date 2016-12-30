//
//  NutritionVC.swift
//  UGANutrition
//
//  Created by Lakshay Sharma on 12/29/16.
//  Copyright © 2016 Lakshay Sharma. All rights reserved.
//

import UIKit

class NutritionVC: UIViewController {

    @IBOutlet weak var caloriesLabel: UILabel!
    
    @IBOutlet weak var carbohydratesLabel: UILabel!
    
    @IBOutlet weak var proteinLabel: UILabel!
    
    @IBOutlet weak var fatLabel: UILabel!
    
    @IBOutlet weak var sodiumLabel: UILabel!
    
    var product: [String:String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        caloriesLabel.layer.cornerRadius = caloriesLabel.bounds.height/1.75
        carbohydratesLabel.layer.cornerRadius = carbohydratesLabel.bounds.height/1.75
        proteinLabel.layer.cornerRadius = proteinLabel.bounds.height/1.75
        fatLabel.layer.cornerRadius = fatLabel.bounds.height/1.75
        sodiumLabel.layer.cornerRadius = caloriesLabel.bounds.height/1.75
        
        caloriesLabel.text = product!["calories"]
        carbohydratesLabel.text = product!["total-carb"]
        proteinLabel.text = product!["protein"]
        fatLabel.text = product!["total-fat"]
        sodiumLabel.text = product!["sodium"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

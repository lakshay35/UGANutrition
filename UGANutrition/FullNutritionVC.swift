//
//  FullNutritionVC.swift
//  UGANutrition
//
//  Created by Lakshay Sharma on 12/29/16.
//  Copyright © 2016 Lakshay Sharma. All rights reserved.
//

import UIKit

class FullNutritionVC: UIViewController {

    @IBOutlet weak var calories: UILabel!
    @IBOutlet weak var caloriesFromFat: UILabel!
    @IBOutlet weak var totalFat: UILabel!
    @IBOutlet weak var totalFatDV: UILabel!
    @IBOutlet weak var saturatedFat: UILabel!
    @IBOutlet weak var saturatedFatDV: UILabel!
    @IBOutlet weak var transFat: UILabel!
    @IBOutlet weak var cholestrol: UILabel!
    @IBOutlet weak var cholestrolDV: UILabel!
    @IBOutlet weak var sodium: UILabel!
    @IBOutlet weak var sodiumDV: UILabel!
    @IBOutlet weak var totalCarbohydrates: UILabel!
    
    @IBOutlet weak var totalCarbohydratesDV: UILabel!
    
    @IBOutlet weak var dietaryFiber: UILabel!
    @IBOutlet weak var dietaryFiberDV: UILabel!
    @IBOutlet weak var sugars: UILabel!
    @IBOutlet weak var protein: UILabel!
    @IBOutlet weak var ingredients: UILabel!
    @IBOutlet weak var allergens: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

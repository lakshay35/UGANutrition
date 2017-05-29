//
//  ViewController.swift
//  UGANutrition
//
//  Created by Lakshay Sharma on 10/12/16.
//  Copyright © 2016 Lakshay Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true;
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false;
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? DiningHallTableViewController
        if(segue.identifier == "Bolton") {
            destinationVC?.data = MainCategories.getData(id: .Bolton)
            destinationVC?.diningHall = DiningHall.Bolton
        } else if(segue.identifier == "Joe Frank Harris") {
            destinationVC?.data = MainCategories.getData(id: .Summit)
            destinationVC?.diningHall = DiningHall.Summit
        } else if(segue.identifier == "O House") {
            destinationVC?.data = MainCategories.getData(id: .OHouse)
            destinationVC?.diningHall = DiningHall.OHouse
        } else if(segue.identifier == "Niche") {
            destinationVC?.data = MainCategories.getData(id: .Niche)
            destinationVC?.diningHall = DiningHall.Niche
        } else {
            destinationVC?.data = MainCategories.getData(id: .Snelling)
            destinationVC?.diningHall = DiningHall.Snelling
        }
    }
    

}


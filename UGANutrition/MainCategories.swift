//
//  MainCategories.swift
//  UGANutrition
//
//  Created by Lakshay Sharma on 10/20/16.
//  Copyright © 2016 Lakshay Sharma. All rights reserved.
//

import Foundation

class MainCategories {
    
    static let data = ["Bagels", "Bakery", "Beverage Additions", "Breakfast Salad", "Breakfast", "Can-Ting", "Cereal", "Cold Beverages", "Condiments", "Hot-Beverages", "Nuts", "Salad Bar Additions", "Salad Bar Dressings", "Salad Bar", "Soup Du Jour", "Special Selections", "Sunrise Cafe Pancake Toppings", "Sunrise Cafe", "Tanyard Deli Additions", "Tanyard Deli Breads", "Tanyard Grill Additions", "Tanyard Grill Breads", "Taqueria", "Trattoria", "Vegetarian Fare", "Classic Cuisine Sides", "Classic Cuisine", "Hickory Oak Rotisserie", "Milkshake"]
    
    static func getMainCategory(index: Int) -> String{
        return data[index]
    }
    
    static func getMainCategoryCount() -> Int {
        return data.count
    }
    
    static func getData() -> [String] {
        return data
    }
    
}

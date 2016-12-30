//
//  MainCategories.swift
//  UGANutrition
//
//  Created by Lakshay Sharma on 10/20/16.
//  Copyright © 2016 Lakshay Sharma. All rights reserved.
//

import Foundation

enum DiningHall {
    case Bolton
    case Summit
    case OHouse
    case Niche
    case Snelling
}

class MainCategories {
    
    static let bolton = ["Bagels", "Bakery", "Beverage Additions", "Breakfast Salad", "Breakfast", "Can-Ting", "Cereal", "Cold Beverages", "Condiments", "Hot-Beverages", "Nuts", "Salad Bar Additions", "Salad Bar Dressings", "Salad Bar", "Soup Du Jour", "Special Selections", "Sunrise Cafe Pancake Toppings", "Sunrise Cafe", "Tanyard Deli Additions", "Tanyard Deli Breads", "Tanyard Grill Additions", "Tanyard Grill Breads", "Taqueria", "Trattoria", "Vegetarian Fare", "Classic Cuisine Sides", "Classic Cuisine", "Hickory Oak Rotisserie", "Milkshake"]
    
    static let summit = ["Accompaniments", "Assorted Yoghurt", "Bagels and Breads", "Beverages", "Beverage Sides", "Breakfast Bakery", "Breakfast Classics", "Breakfast Classics Sides", "Breakfast Cold Bar", "Cereal", "Condiments", "Fruits", "Hole In The Wall Breads", "Hole In The Wall Grill", "Ice Cream & Toppings", "Ice Cream Rotate Hot Fruit", "Joe @ The O'", "Joe @ The O' Accompaniments", "Joe @ The O' Add-ins", "Nut Zone All Day", "O'hacienda Breakfast Cold", "O'hacienda Breakfast Hot", "O'hacienda Cold", "O'hacienda Self Service", "O'hacienda Soup", "O'hacienda Wraps All Day", "Oriental Trading Market", "Salad Bar", "Salad Dressings", "Seasonal Hand Fruit", "Skillets Breakfast", "Stacks Deli Breads", "Stacks Deli"]
    
    static let niche  = ["sdfsdf"]
    
    static let oHouse = ["Sdfsf"]
    
    static let snelling = ["sdfsd"]
    
    static func getMainCategoryCount(id: DiningHall) -> Int {
        switch(id){
        case .Bolton:
            return bolton.count
        case .Niche:
            return niche.count
        case .OHouse:
            return oHouse.count
        case .Summit:
            return summit.count
        case .Snelling:
            return snelling.count
        }
    }
    
    static func getData(id: DiningHall) -> [String] {
        switch(id){
        case .Bolton:
                return bolton
        case .Niche:
                return niche
        case .OHouse:
                return oHouse
        case .Summit:
                return summit
        case .Snelling:
                return snelling
        
        }
    }
    
}

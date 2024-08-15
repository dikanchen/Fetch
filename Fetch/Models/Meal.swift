//
//  Meal.swift
//  Fetch
//
//  Created by Dikan Chen on 8/15/24.
//

import SwiftUI

struct Meal: Identifiable, Codable {
    let idMeal: String
    let strMeal: String
    let strMealThumb: String
    
    var id: String { idMeal }
}

struct MealsResponse: Codable {
    let meals: [Meal]
}

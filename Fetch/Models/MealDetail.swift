//
//  MealDetail.swift
//  Fetch
//
//  Created by Dikan Chen on 8/15/24.
//

import SwiftUI

struct MealDetail: Identifiable, Codable {
    let idMeal: String
    let strMeal: String
    let strInstructions: String
    let ingredients: [String?]
    let measurements: [String?]

    var id: String { idMeal }

    enum CodingKeys: String, CodingKey {
        case idMeal, strMeal, strInstructions
        case strIngredient1, strIngredient2, strIngredient3, strIngredient4, strIngredient5, strIngredient6, strIngredient7, strIngredient8, strIngredient9, strIngredient10, strIngredient11, strIngredient12, strIngredient13, strIngredient14, strIngredient15, strIngredient16, strIngredient17, strIngredient18, strIngredient19, strIngredient20
        case strMeasure1, strMeasure2, strMeasure3, strMeasure4, strMeasure5, strMeasure6, strMeasure7, strMeasure8, strMeasure9, strMeasure10, strMeasure11, strMeasure12, strMeasure13, strMeasure14, strMeasure15, strMeasure16, strMeasure17, strMeasure18, strMeasure19, strMeasure20
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        idMeal = try container.decode(String.self, forKey: .idMeal)
        strMeal = try container.decode(String.self, forKey: .strMeal)
        strInstructions = try container.decode(String.self, forKey: .strInstructions)

        ingredients = [
            try container.decodeIfPresent(String.self, forKey: .strIngredient1),
            try container.decodeIfPresent(String.self, forKey: .strIngredient2),
            try container.decodeIfPresent(String.self, forKey: .strIngredient3),
            try container.decodeIfPresent(String.self, forKey: .strIngredient4),
            try container.decodeIfPresent(String.self, forKey: .strIngredient5),
            try container.decodeIfPresent(String.self, forKey: .strIngredient6),
            try container.decodeIfPresent(String.self, forKey: .strIngredient7),
            try container.decodeIfPresent(String.self, forKey: .strIngredient8),
            try container.decodeIfPresent(String.self, forKey: .strIngredient9),
            try container.decodeIfPresent(String.self, forKey: .strIngredient10),
            try container.decodeIfPresent(String.self, forKey: .strIngredient11),
            try container.decodeIfPresent(String.self, forKey: .strIngredient12),
            try container.decodeIfPresent(String.self, forKey: .strIngredient13),
            try container.decodeIfPresent(String.self, forKey: .strIngredient14),
            try container.decodeIfPresent(String.self, forKey: .strIngredient15),
            try container.decodeIfPresent(String.self, forKey: .strIngredient16),
            try container.decodeIfPresent(String.self, forKey: .strIngredient17),
            try container.decodeIfPresent(String.self, forKey: .strIngredient18),
            try container.decodeIfPresent(String.self, forKey: .strIngredient19),
            try container.decodeIfPresent(String.self, forKey: .strIngredient20)
        ]

        measurements = [
            try container.decodeIfPresent(String.self, forKey: .strMeasure1),
            try container.decodeIfPresent(String.self, forKey: .strMeasure2),
            try container.decodeIfPresent(String.self, forKey: .strMeasure3),
            try container.decodeIfPresent(String.self, forKey: .strMeasure4),
            try container.decodeIfPresent(String.self, forKey: .strMeasure5),
            try container.decodeIfPresent(String.self, forKey: .strMeasure6),
            try container.decodeIfPresent(String.self, forKey: .strMeasure7),
            try container.decodeIfPresent(String.self, forKey: .strMeasure8),
            try container.decodeIfPresent(String.self, forKey: .strMeasure9),
            try container.decodeIfPresent(String.self, forKey: .strMeasure10),
            try container.decodeIfPresent(String.self, forKey: .strMeasure11),
            try container.decodeIfPresent(String.self, forKey: .strMeasure12),
            try container.decodeIfPresent(String.self, forKey: .strMeasure13),
            try container.decodeIfPresent(String.self, forKey: .strMeasure14),
            try container.decodeIfPresent(String.self, forKey: .strMeasure15),
            try container.decodeIfPresent(String.self, forKey: .strMeasure16),
            try container.decodeIfPresent(String.self, forKey: .strMeasure17),
            try container.decodeIfPresent(String.self, forKey: .strMeasure18),
            try container.decodeIfPresent(String.self, forKey: .strMeasure19),
            try container.decodeIfPresent(String.self, forKey: .strMeasure20)
        ]
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(idMeal, forKey: .idMeal)
        try container.encode(strMeal, forKey: .strMeal)
        try container.encode(strInstructions, forKey: .strInstructions)

        try container.encodeIfPresent(ingredients[0], forKey: .strIngredient1)
        try container.encodeIfPresent(ingredients[1], forKey: .strIngredient2)
        try container.encodeIfPresent(ingredients[2], forKey: .strIngredient3)
        try container.encodeIfPresent(ingredients[3], forKey: .strIngredient4)
        try container.encodeIfPresent(ingredients[4], forKey: .strIngredient5)
        try container.encodeIfPresent(ingredients[5], forKey: .strIngredient6)
        try container.encodeIfPresent(ingredients[6], forKey: .strIngredient7)
        try container.encodeIfPresent(ingredients[7], forKey: .strIngredient8)
        try container.encodeIfPresent(ingredients[8], forKey: .strIngredient9)
        try container.encodeIfPresent(ingredients[9], forKey: .strIngredient10)
        try container.encodeIfPresent(ingredients[10], forKey: .strIngredient11)
        try container.encodeIfPresent(ingredients[11], forKey: .strIngredient12)
        try container.encodeIfPresent(ingredients[12], forKey: .strIngredient13)
        try container.encodeIfPresent(ingredients[13], forKey: .strIngredient14)
        try container.encodeIfPresent(ingredients[14], forKey: .strIngredient15)
        try container.encodeIfPresent(ingredients[15], forKey: .strIngredient16)
        try container.encodeIfPresent(ingredients[16], forKey: .strIngredient17)
        try container.encodeIfPresent(ingredients[17], forKey: .strIngredient18)
        try container.encodeIfPresent(ingredients[18], forKey: .strIngredient19)
        try container.encodeIfPresent(ingredients[19], forKey: .strIngredient20)

        try container.encodeIfPresent(measurements[0], forKey: .strMeasure1)
        try container.encodeIfPresent(measurements[1], forKey: .strMeasure2)
        try container.encodeIfPresent(measurements[2], forKey: .strMeasure3)
        try container.encodeIfPresent(measurements[3], forKey: .strMeasure4)
        try container.encodeIfPresent(measurements[4], forKey: .strMeasure5)
        try container.encodeIfPresent(measurements[5], forKey: .strMeasure6)
        try container.encodeIfPresent(measurements[6], forKey: .strMeasure7)
        try container.encodeIfPresent(measurements[7], forKey: .strMeasure8)
        try container.encodeIfPresent(measurements[8], forKey: .strMeasure9)
        try container.encodeIfPresent(measurements[9], forKey: .strMeasure10)
        try container.encodeIfPresent(measurements[10], forKey: .strMeasure11)
        try container.encodeIfPresent(measurements[11], forKey: .strMeasure12)
        try container.encodeIfPresent(measurements[12], forKey: .strMeasure13)
        try container.encodeIfPresent(measurements[13], forKey: .strMeasure14)
        try container.encodeIfPresent(measurements[14], forKey: .strMeasure15)
        try container.encodeIfPresent(measurements[15], forKey: .strMeasure16)
        try container.encodeIfPresent(measurements[16], forKey: .strMeasure17)
        try container.encodeIfPresent(measurements[17], forKey: .strMeasure18)
        try container.encodeIfPresent(measurements[18], forKey: .strMeasure19)
        try container.encodeIfPresent(measurements[19], forKey: .strMeasure20)
    }
}

struct MealDetailResponse: Codable {
    let meals: [MealDetail]
}

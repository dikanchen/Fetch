//
//  DessertViewModel.swift
//  Fetch
//
//  Created by Dikan Chen on 8/15/24.
//

import SwiftUI

@MainActor
class DessertViewModel: ObservableObject {
    @Published var meals: [Meal] = []
    @Published var selectedMeal: MealDetail?

    func fetchDesserts() async {
        guard let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert") else { return }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedResponse = try JSONDecoder().decode(MealsResponse.self, from: data)
            self.meals = decodedResponse.meals.sorted { $0.strMeal < $1.strMeal }
            print("meals are \(self.meals)")
        } catch {
            print("Failed to fetch desserts: \(error)")
        }
    }

    func fetchMealDetail(id: String) async {
        guard let url = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=\(id)") else { return }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedResponse = try JSONDecoder().decode(MealDetailResponse.self, from: data)
            self.selectedMeal = decodedResponse.meals.first
            print("selected meal id is \(self.selectedMeal?.id ?? "")")
        } catch {
            print("Failed to fetch meal details: \(error)")
        }
    }
}

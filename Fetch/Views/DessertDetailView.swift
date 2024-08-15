//
//  DessertDetailView.swift
//  Fetch
//
//  Created by Dikan Chen on 8/15/24.
//

import SwiftUI

struct DessertDetailView: View {
    let mealID: String
    @StateObject var viewModel = DessertViewModel()

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                if let meal = viewModel.selectedMeal {
                    Text(meal.strMeal)
                        .font(.largeTitle)
                        .padding()

                    Text(meal.strInstructions)
                        .padding()

                    ForEach(0..<meal.ingredients.count, id: \.self) { index in
                        if let ingredient = meal.ingredients[index], !ingredient.isEmpty,
                           let measure = meal.measurements[index], !measure.isEmpty {
                            Text("\(ingredient): \(measure)")
                                .padding(.leading)
                        }
                    }
                } else {
                    ProgressView()
                        .onAppear {
                            Task {
                                await viewModel.fetchMealDetail(id: mealID)
                            }
                        }
                }
            }
            .padding()
            .navigationTitle("Details")
        }
    }
}


#Preview {
    DessertDetailView(mealID: "")
}

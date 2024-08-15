//
//  DessertListView.swift
//  Fetch
//
//  Created by Dikan Chen on 8/15/24.
//

import SwiftUI

struct DessertListView: View {
    @StateObject var viewModel = DessertViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.meals) { meal in
                NavigationLink(destination: DessertDetailView(mealID: meal.idMeal)) {
                    HStack {
                        AsyncImage(url: URL(string: meal.strMealThumb))
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        Text(meal.strMeal)
                    }
                }
            }
            .navigationTitle("Desserts")
            .onAppear {
                Task {
                    await viewModel.fetchDesserts()
                }
            }
        }
    }
}

#Preview {
    DessertListView()
}

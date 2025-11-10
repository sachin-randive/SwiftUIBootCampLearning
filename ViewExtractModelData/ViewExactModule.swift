//
//  ViewExactModule.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 13/10/25.
//

import SwiftUI
//ViewModel
class ViewExactViewModel: ObservableObject {
    @Published var foodItems:[FoodItemModel] = []
    
    init () {
        fetchFoodItems()
    }
    func fetchFoodItems() {
        self.foodItems = [.init(imageName: "1", type: "Japanies", restourantName: "shoto"), .init(imageName: "2", type: "American", restourantName: "Mohu"), .init(imageName: "1", type: "Indian", restourantName: "Taj"), .init(imageName: "3", type: "Jarmanian", restourantName: "SHahaji"), .init(imageName: "4", type: "Japanies", restourantName: "New Place"), .init(imageName: "5", type: "Indian", restourantName: "Rajweada"), .init(imageName: "1", type: "Japanies", restourantName: "shoto"), .init(imageName: "2", type: "American", restourantName: "Mohu"), .init(imageName: "1", type: "Indian", restourantName: "Taj"), .init(imageName: "3", type: "Jarmanian", restourantName: "SHahaji"), .init(imageName: "4", type: "Japanies", restourantName: "New Place"), .init(imageName: "5", type: "Indian", restourantName: "Rajweada")]
    }
}
// View
struct ViewExactModule: View {
    @StateObject private var viewModel:ViewExactViewModel = .init()
    
    var body: some View {
        Text("Featured on Swift Food")
            .font(.title2)
            .fontWeight(.semibold)
        
        ScrollView {
            VStack(spacing: 40) {
                ForEach(viewModel.foodItems) { foodItem in
                    MenuItemView(foodItemMenu: foodItem)
                }
            }
        }
    }
}

#Preview {
    ViewExactModule()
}


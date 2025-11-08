//
//  MenuItemView.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 13/10/25.
//

import SwiftUI

struct MenuItemView: View {
    var foodItemMenu: FoodItemModel
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(foodItemMenu.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 200)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(foodItemMenu.type)
                    .fontWeight(.bold)
                Text (foodItemMenu.restourantName)
                    .foregroundColor(.gray)
                Text("$ 1.009 Delivery fees | 3- 4 hours")
            }.font(.subheadline)
        }
    }
}

#Preview {
    MenuItemView(foodItemMenu: FoodItemModel.init(imageName: "2", type: "Pizza", restourantName: "Pizza Hut"))
}

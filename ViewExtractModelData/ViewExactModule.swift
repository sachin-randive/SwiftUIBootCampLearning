//
//  ViewExactModule.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 13/10/25.
//

import SwiftUI

struct ViewExactModule: View {
   // let foodImages = ["2","1","3","4","5","1","2","3","4", "5"]
    let foodItems:[FoodItemModel] = [.init(imageName: "1", type: "Japanies", restourantName: "shoto"), .init(imageName: "2", type: "American", restourantName: "Mohu"), .init(imageName: "1", type: "Indian", restourantName: "Taj"), .init(imageName: "3", type: "Jarmanian", restourantName: "SHahaji"), .init(imageName: "4", type: "Japanies", restourantName: "New Place"), .init(imageName: "5", type: "Indian", restourantName: "Rajweada"), .init(imageName: "1", type: "Japanies", restourantName: "shoto"), .init(imageName: "2", type: "American", restourantName: "Mohu"), .init(imageName: "1", type: "Indian", restourantName: "Taj"), .init(imageName: "3", type: "Jarmanian", restourantName: "SHahaji"), .init(imageName: "4", type: "Japanies", restourantName: "New Place"), .init(imageName: "5", type: "Indian", restourantName: "Rajweada")]
    
    var body: some View {
        
        Text("Featured on Swift Food")
            .font(.title2)
            .fontWeight(.semibold)
        
        ScrollView {
            VStack(spacing: 40) {
                ForEach(foodItems) { foodItem in
                    MenuItemView(foodItemMenu: foodItem)
                }
            }
        }
    }
}

#Preview {
    ViewExactModule()
}


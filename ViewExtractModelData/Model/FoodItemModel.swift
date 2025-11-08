//
//  FoolItemModel.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 13/10/25.
//

import Foundation


struct FoodItemModel: Identifiable {
    var id: UUID = UUID()
    let imageName: String
    let type: String
    let restourantName: String
}

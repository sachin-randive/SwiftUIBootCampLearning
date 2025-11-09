//
//  SheetModule.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 08/11/25.
//

import SwiftUI

struct SheetModule: View {
    @State private var showSheet: Bool = false
    @State private var foodItemMenu: FoodItemModel?
    var body: some View {
        
        VStack {
//            if let item = foodItemMenu {
//                MenuItemView(foodItemMenu: item)
//            }
            Button("SHow Sheet") {
                showSheet.toggle()
               
                print(showSheet)
            }
           /* .sheet(isPresented: $showSheet) {
                foodItemMenu = FoodItemModel(imageName: "1", type: "Japanies", restourantName: "shoto")
                print(showSheet)
            } content: {
                Text("Hello, World!")
            }*/
           .sheet(isPresented: $showSheet, content: {
               ScrollModule()
                   .presentationDetents([.height(320),.medium, .large])
                   .presentationBackgroundInteraction(.enabled(upThrough: .height(320)))
            })
           
         /*   .fullScreenCover(isPresented: $showSheet, content: {
//                Button("Dismiss") {
//                    showSheet.toggle()
//                    print(showSheet)
//                    
//                }
                ScrollModule()
                
            })*/
        }
    }
}

#Preview {
    SheetModule()
}

//
//  ScrollModule.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 08/10/25.
//

import SwiftUI

struct ScrollModule: View {
    
    let foodImages = ["2","1","3","4","5","1","2","3","4", "5"]
    
    var body: some View {
        
        Text("Featured on Swift Food")
            .font(.title2)
            .fontWeight(.semibold)
        
        ScrollView {
            VStack(spacing: 40) {
                ForEach(foodImages, id: \.self) { foodImage in
                    VStack(alignment: .leading, spacing: 20) {
                        Image(foodImage)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 200)
                            .cornerRadius(20)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("shoto")
                                .fontWeight(.semibold)
                            Text("$ 1.009 Delivery fees | 3- 4 hours")
                        }.font(.subheadline)
                    }
                }
            }
            
        }
    }
}

#Preview {
    ScrollModule()
}

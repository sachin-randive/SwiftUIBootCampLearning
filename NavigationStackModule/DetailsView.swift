//
//  DetailsView.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 09/11/25.
//

import SwiftUI

struct DetailsView: View {
    let driver: String
    let image: String
    
    var body: some View {
        VStack {
          /*  NavigationLink {
                Text("third Screen")
            } label: {
                VStack {
                    Text(driver)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.purple)
                    Image(image)
                        .resizable()
                        .scaledToFill()
                    .frame(width: 350, height: 350)
                        .clipShape(Circle())
                }
            } */
            NavigationLink(value: "third Screen", label: {
                VStack {
                    Text(driver)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.purple)
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 350, height: 350)
                }
            })
        }
        .navigationDestination(for: String.self) { destination in
            if destination == "third Screen" {
                Text("Third Screen")    
            }
        }
    }
}

#Preview {
    DetailsView(driver: "Ravi", image: "5")
}

//
//  ButtonModule.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 08/11/25.
//

import SwiftUI

struct ButtonModule: View {
    @State private var rectanleColor = Color.blue
    @State var title = "Hello"
    @State private var didlike = false
    var body: some View {
        VStack {
            Rectangle()
            //.fill(Color.blue)
                .frame(width: 200, height: 100)
                .cornerRadius(25)
                .foregroundColor(rectanleColor)
            Text(title)
                .font(.headline)
            
            Button("Click Me") {
                rectanleColor = .red
                title = "Button Clicked"
                
            }
            .padding(10)
            
            Button{
                rectanleColor = .yellow
                title = "custom Label Clicked"
                
            }label: {
                Text("Custom Label")
                    .font(.headline)
                    .fontWeight(.bold)
                    .frame(width: 360, height: 48)
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(10)
            }
            
            Button {
                didlike.toggle()
                print(didlike)
                rectanleColor = .purple
                title = "heart circle clicked"
                
            } label: {
                Image(systemName: didlike ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(didlike ? .red : .gray)
            }
        }
    }
}

#Preview {
    ButtonModule()
}

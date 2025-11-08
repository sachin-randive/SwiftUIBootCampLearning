//
//  StacksModules.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 08/10/25.
//

import SwiftUI

struct StacksModules: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
           // Spacer()
            // cell one
            HStack {
                Image("Img")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .padding(.horizontal)
                VStack(alignment: .leading) {
                    Text("New Learning")
                        .fontWeight(.semibold)
                    Text("Hello, World!")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            
            Divider()
            //cell two
            HStack {
                Image("Img")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .padding(.horizontal)
                VStack(alignment: .leading) {
                    Text("New Learning")
                        .fontWeight(.semibold)
                    Text("Hello, World!")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            Divider()
            Spacer()
            
        }
        
//        VStack(alignment: .center, spacing: 30) {
////            Text("Stacks Modules")
////                .font(.title)
////                .fontWeight(.semibold)
//            
//            ZStack {
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 350, height: 100)
//                    .cornerRadius(20)
//                
//                Text("Hello, World!")
//                    .font(.headline)
//                    .fontWeight(.semibold)
//                    .foregroundColor(.white)
//                    .padding()
//            }
//            
//            HStack {
//                Rectangle()
//                    .fill(Color.pink)
//                    .frame(width: 200, height: 100)
//                    .cornerRadius(20)
//                
//                Rectangle()
//                    .fill(Color.cyan)
//                    .frame(width: 200, height: 100)
//                    .cornerRadius(20)
//            }
//        }
        
//        HStack(alignment: .center, spacing: 30) {
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 500)
//                .cornerRadius(20)
//            
//            Rectangle()
//                .fill(Color.pink)
//                .frame(width: 100, height: 300)
//                .cornerRadius(20)
//            
//            Rectangle()
//                .fill(Color.purple)
//                .frame(width: 100, height: 150)
//                .cornerRadius(20)
//        }
//        
//        ZStack(alignment: .bottomTrailing) {
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 200, height: 200)
//                .cornerRadius(20)
//            
//            Rectangle()
//                .fill(Color.pink)
//                .frame(width: 150, height: 100)
//                .cornerRadius(20)
//            Rectangle()
//                .fill(Color.black)
//                .frame(width: 100, height: 50)
//                .cornerRadius(20)
//        }
    }
}

#Preview {
    StacksModules()
}

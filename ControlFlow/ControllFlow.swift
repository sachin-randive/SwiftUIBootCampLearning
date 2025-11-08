//
//  ControllFlow.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 12/10/25.
//

import SwiftUI

struct ControllFlow: View {
    @State private var imgae = true
    @State private var didLike = false
    @State private var likes = 500
    
    var body: some View {
//        if imgae {
//            Image(systemName:"heart.fill")
//                .resizable()
//                .frame(width: 100, height: 100)
//        } else {
//            Text("No Image show!")
//        }
       
        VStack {
            Button(action: {
                self.didLike.toggle()
               if self.didLike {
                    self.likes += 1
                } else {
                    self.likes -= 1
               }
            }, label : {
                Image(systemName: didLike ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(didLike ? .red: .black )
                
//                if self.didLike {
//                    Image(systemName:"heart.fill")
//                        .resizable()
//                        .frame(width: 100, height: 100)
//                        .foregroundColor(.purple)
//                } else {
//                    Image(systemName:"heart")
//                        .resizable()
//                        .frame(width: 100, height: 100)
//                        .foregroundColor(.red)
//                }
            })
            .padding()
            
            Text("\(likes) Likes")
                .font(.headline)
        }
    }
}

#Preview {
    ControllFlow()
}

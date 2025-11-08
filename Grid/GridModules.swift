//
//  GridModules.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 08/10/25.
//

import SwiftUI

struct Driver {
    var driverPic: String
    var driverId: Int
}

struct GridModules: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    let dimention = (UIScreen.main.bounds.width/3)
    var driverImages  = [Driver(driverPic:"ab", driverId: 1),Driver(driverPic:"ac", driverId: 2),Driver(driverPic:"ad", driverId: 3),Driver(driverPic:"ae", driverId: 4),Driver(driverPic:"Img", driverId: 5),Driver(driverPic:"ac", driverId: 6),Driver(driverPic:"ad", driverId: 7),Driver(driverPic:"ae", driverId: 8),Driver(driverPic:"Img", driverId: 9,)]
    //["ab","ac","ad","ae","Img","ac","ad","ae","Img"]
    
    var body: some View {
       ScrollView {
           LazyVGrid(columns: columns, spacing: 2) {
              
               ForEach(driverImages,  id: \.driverId) { item in
//                   Text("Module \(item.driverPic)")
//                       .font(.headline)
//                       .padding()
//                       .background(Color.blue.opacity(0.2))
//                       .cornerRadius(8)
                   
                   Image(item.driverPic)
                       .resizable()
                       .scaledToFill()
                       .frame(width: dimention, height: dimention)
                       .clipShape(Rectangle())
                      
               }
               
           }
        }
    }
}

#Preview {
    GridModules()
}

//
//  GridModules.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 08/10/25.
//

import SwiftUI
// Model
struct Driver {
    var driverPic: String
    var driverId: Int
}
// ViewModel
class DriverViewModel: ObservableObject {
    @Published var drivers: [Driver] = []
    init () {
        fetchDrivers()
    }
    func fetchDrivers() {
        self.drivers = [Driver(driverPic:"ab", driverId: 1),Driver(driverPic:"ac", driverId: 2),Driver(driverPic:"ad", driverId: 3),Driver(driverPic:"ae", driverId: 4),Driver(driverPic:"Img", driverId: 5),Driver(driverPic:"ac", driverId: 6),Driver(driverPic:"ad", driverId: 7),Driver(driverPic:"ae", driverId: 8),Driver(driverPic:"Img", driverId: 9,)]
    }
}
// View
struct GridModules: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    let dimention = (UIScreen.main.bounds.width/3)
    
    @StateObject private var viewModel = DriverViewModel()
    
    var body: some View {
       ScrollView {
           LazyVGrid(columns: columns, spacing: 2) {
              
               ForEach(viewModel.drivers,  id: \.driverId) { item in
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

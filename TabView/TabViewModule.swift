//
//  TabViewModule.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 09/11/25.
//

import SwiftUI

struct TabViewModule: View {
    
    var driverImages  = [Driver(driverPic:"ab", driverId: 1),Driver(driverPic:"ac", driverId: 2),Driver(driverPic:"ad", driverId: 3),Driver(driverPic:"ae", driverId: 4),Driver(driverPic:"Img", driverId: 5),Driver(driverPic:"ac", driverId: 6),Driver(driverPic:"ad", driverId: 7),Driver(driverPic:"ae", driverId: 8),Driver(driverPic:"Img", driverId: 9,)]
    var body: some View {
        TabView {
           /* ImagesModules()
                .tabItem {
                    Image(systemName: "tray.and.arrow.down.fill")
                    Text("Received")
                }
            
            PaddingModules()
                .tabItem {
                    Image(systemName: "tray.and.arrow.up.fill")
                    Text("Sent")
                }
            
            ListModules()
                .tabItem {
                    Image(systemName: "tray.fill")
                    Text("Drafts")
                }
            
            Text("Account")
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Account")
                }*/
            
            ForEach(driverImages, id: \.driverId) { image in
                  Image(image.driverPic)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Rectangle())
                    .cornerRadius(20)
            }
        }
        .frame(height: 400)
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

#Preview {
    TabViewModule()
}

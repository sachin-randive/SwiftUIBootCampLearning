//
//  ListModules.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 08/10/25.
//

import SwiftUI

struct ListModules: View {
    let drivers: [String] = ["Ravi Patel","Divit Randive", "Anu sharma", "Depak Pandy"]
    
    let teams: [String] = ["Mumbai Indians","delhi capitals", "Chennai Super Kings", ]
    var body: some View {
        List {
            Section(header: Text("Drivers")) {
                ForEach(drivers, id: \.self) { driver in
                    Text(driver)
                }
            }
            
            Section(header: Text("Teams")) {
                ForEach(teams, id: \.self) { team in
                    Text(team)
                }
            }
            
        }.listStyle(SidebarListStyle())
    }
}

#Preview {
    ListModules()
}

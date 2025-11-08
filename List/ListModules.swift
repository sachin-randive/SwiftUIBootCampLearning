//
//  ListModules.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 08/10/25.
//

import SwiftUI

struct ListModules: View {
    @State var drivers: [String] = ["Ravi Patel","Divit Randive", "Anu sharma", "Depak Pandy"]
    
    @State var teams: [String] = ["Mumbai Indians","delhi capitals", "Chennai Super Kings", ]
    var body: some View {
        List {
            Section(header: Text("Drivers")) {
                ForEach(drivers, id: \.self) { driver in
                    Text(driver)
                }
                .onDelete(perform: { offsets in
                    drivers.remove(atOffsets: offsets)
                })
            }
            
            Section(header: Text("Teams")) {
                ForEach(teams, id: \.self) { team in
                    Text(team)
                }
                .onDelete(perform: { offset in
                    teams.remove(atOffsets: offset)
                })
            }
            
        }.listStyle(SidebarListStyle())
    }
}

#Preview {
    ListModules()
}

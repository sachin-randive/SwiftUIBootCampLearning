//
//  NavigationStackModule.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 09/11/25.
//

import SwiftUI

struct Employee: Identifiable, Hashable {
    var id = UUID().uuidString
    var EmployeeName: String
    let imageName: String
}

struct NavigationStackModule: View {
    var Employees: [Employee] = [.init(EmployeeName: "Divit Randive", imageName: "5"),
                                 .init(EmployeeName: "Anu sharma", imageName: "1"),
                                 .init(EmployeeName: "Ravi Patel", imageName: "2"),
                                 .init(EmployeeName: "Depak Pandy", imageName: "3"),
                                 .init(EmployeeName: "Lewis Hamilton", imageName: "4"),
                                 .init(EmployeeName: "Yuki Tsunode", imageName: "5"),
                                 .init(EmployeeName: "Ruturaj Jhon", imageName: "1")]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(Employees) { emp in
                    NavigationLink(value: emp, label: {
                        HStack {
                            Image(emp.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text(emp.EmployeeName)
                                Text("Pune")
                            }
                        }
                    })
                }
            }
            
            .navigationDestination(for: Employee.self) { item in
                DetailsView(driver: item.EmployeeName, image: item.imageName)
            }
            .navigationBarTitle("Employees")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    NavigationStackModule()
}

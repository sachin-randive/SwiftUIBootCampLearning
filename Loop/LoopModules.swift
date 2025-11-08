//
//  LoopModules.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 08/10/25.
//

import SwiftUI

let drivers: [String] = ["Ravi Patel","Divit Randive", "Anu sharma", "Depak Pandy"]

struct LoopModules: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(drivers, id: \.self) { driver in
                    HStack {
                        Image("Img")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(.horizontal)
                        VStack(alignment: .leading) {
                            Text("New Learning")
                                .fontWeight(.semibold)
                            Text(driver)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                       Image(systemName: "checkmark.circle")
                            .foregroundColor(.blue)
                    }
                }
                Text("Loop Ended")
            }
        }.padding()
       
    }
}

#Preview {
    LoopModules()
}

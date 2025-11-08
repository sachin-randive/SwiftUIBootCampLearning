//
//  PaddingModules.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 08/10/25.
//

import SwiftUI

struct PaddingModules: View {
    var body: some View {
        Text("Leadership in the development and release ")
            .padding()
            .background(Color.blue.opacity(0.2))
            .cornerRadius(10)
            .padding()
            .background(Color.purple)
            .padding(.horizontal)
            .background(Color.yellow)
    }
    
}

#Preview {
    PaddingModules()
}

//
//  TextModule.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 07/10/25.
//

import SwiftUI

struct TextModule: View {
    var body: some View {
        Text("This is the best Swift UI Learning course")
            .foregroundColor(.blue)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .italic(true)
            .underline(true)
            
    }
}

#Preview {
    TextModule()
}

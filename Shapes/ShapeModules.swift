//
//  SHapeModules.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 07/10/25.
//

import SwiftUI

struct SHapeModules: View {
    var body: some View {
//       Circle()
//            .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
//            .foregroundColor(.blue)
//            .frame(width: 200, height: 200)
//        Rectangle()
//            .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
//            .foregroundColor(.blue)
//            .frame(width: 300, height: 200)
//            .cornerRadius(20)
        
        Capsule()
            .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
            .foregroundColor(.blue)
            //.frame(width: 300, height: 200)
            .cornerRadius(20)
            
    }
}

#Preview {
    SHapeModules()
}

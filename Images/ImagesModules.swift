//
//  ImagesModules.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 07/10/25.
//

import SwiftUI

struct ImagesModules: View {
    var body: some View {
//       Image(systemName: "heart.circle.fill")
//            .resizable()
//            .foregroundColor(.cyan)
//            .font(.largeTitle)
//            .imageScale(.small)
//            .frame(width: 50, height: 100)
        
        Image("Img")
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 500)
            .clipShape(Circle())
    }
}

#Preview {
    ImagesModules()
}

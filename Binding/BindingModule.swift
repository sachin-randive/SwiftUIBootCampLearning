//
//  BindingModule.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 13/10/25.
//

import SwiftUI

struct BindingModule: View {
    @State private var isOn = false
    var body: some View {
        
        VStack {
            Text("Notification is \(isOn ? "Enabled" : "Disabled") ")
            BindingSubView(imageName: "bell.circle.fill", title: "Notification", isOn: $isOn)
        }
    }
}

#Preview {
    BindingModule()
}


//
//  BindingSubView.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 13/10/25.
//

import SwiftUI

struct BindingSubView: View {
    let imageName: String
    let title: String
    @Binding var isOn: Bool
    var body: some View {
        Toggle(isOn: $isOn) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundColor(.blue)
                Text(title)
                    .font(.subheadline)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color(.systemGroupedBackground))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}
#Preview {
    BindingSubView(imageName:"Notifications", title: "bell.circle.fill", isOn: .init(get: { false }, set: { _ in } ))
}


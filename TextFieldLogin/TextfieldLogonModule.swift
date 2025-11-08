//
//  TextfieldLogonModule.swift
//  SwiftUILearning
//
//  Created by Sachin Randive on 13/10/25.
//

import SwiftUI

struct TextfieldLogonModule: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack(spacing: 24) {
            Image("social")
                .resizable()
                .frame(width: 130, height: 130)
            VStack {
                TextField( "Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                
                SecureField( "Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .keyboardType(.default)
                    .textInputAutocapitalization(.never)
            }
            
            Button {
                print("Login with email: \(email), password: \(password)")
            } label: {
                Text("Log In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 48)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    TextfieldLogonModule()
}

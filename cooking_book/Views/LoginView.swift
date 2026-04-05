//
//  LoginView.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 5/4/26.
//

import SwiftUI

struct LoginView: View {

    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            Text("Email")
                .font(.system(size: 15.0))
            TextField("Email", text: $email)
                .font(.system(size: 14.0, weight: .regular))
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
            Rectangle()
                .fill(.border)
                .frame(height: 0.5)
                .padding(.bottom, 16.0)

            Text("Password")
                .font(.system(size: 15.0))
            SecureField("Password", text: $password)
                .font(.system(size: 14.0, weight: .regular))
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
            Rectangle()
                .fill(.border)
                .frame(height: 0.5)
                .padding(.bottom, 48.0)

            Button(action: {

            }, label: {
                Text("Login")
                    .font(.system(size: 15.0, weight: .semibold))
                    .padding()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .background(.green)
                    .clipShape(RoundedRectangle(cornerRadius: 8.0))
            })
            HStack {
                Spacer()
                Text("Don't have an account?")
                    .font(.system(size: 14.0))
                Button(action: {

                }, label: {
                    Text("Register now")
                        .font(.system(size: 14.0, weight: .semibold))
                })
            }
            .padding(.top, 8.0)
        }
        .padding()
    }
}

#Preview {
    LoginView()
}

//
//  RegisterView.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 5/4/26.
//

import SwiftUI

struct RegisterView: View {

    @StateObject private var viewModel = RegisterViewModel()
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(alignment: .leading) {
            AuthTextFieldView(title: "Username", inputTextField: $viewModel.username)
                .keyboardType(.emailAddress)
                .padding(.bottom, 16.0)

            AuthTextFieldView(title: "Email", inputTextField: $viewModel.email)
                .padding(.bottom, 16.0)

            PasswordTextFieldView(title: "Password", inputTextField: $viewModel.password)
                .padding(.bottom, 40.0)

            Button(action: {
                // TODO: handle sign up logic later
            }, label: {
                Text("Sign Up")
                    .font(.system(size: 15.0, weight: .semibold))
                    .padding()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .background(.green)
                    .clipShape(RoundedRectangle(cornerRadius: 8.0))
            })
            HStack {
                Spacer()
                Text("Have an account?")
                    .font(.system(size: 14.0))
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Login now")
                        .font(.system(size: 14.0, weight: .semibold))
                })
            }
            .padding(.top, 8.0)
        }
        .padding()
    }
}

#Preview {
    RegisterView()
}

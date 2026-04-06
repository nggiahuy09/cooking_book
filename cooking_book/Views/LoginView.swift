//
//  LoginView.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 5/4/26.
//

import SwiftUI

struct LoginView: View {

    @StateObject private var viewModel = LoginViewModel()

    var body: some View {
        VStack(alignment: .leading) {
            AuthTextFieldView(title: "Email", inputTextField: $viewModel.email)
                .keyboardType(.emailAddress)
                .padding(.bottom, 16.0)

            PasswordTextFieldView(title: "Password", inputTextField: $viewModel.password)
                .padding(.bottom, 40.0)

            Button(action: {
                // TODO: handle login logic later
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
                    viewModel.presentRegisterView = true
                }, label: {
                    Text("Register now")
                        .font(.system(size: 14.0, weight: .semibold))
                })
            }
            .padding(.top, 8.0)
        }
        .padding()
        .fullScreenCover(isPresented: $viewModel.presentRegisterView, content: {
            RegisterView()
        })
    }
}

#Preview {
    LoginView()
}

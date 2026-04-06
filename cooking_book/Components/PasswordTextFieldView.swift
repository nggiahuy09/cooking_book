//
//  PasswordTextFieldView.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 6/4/26.
//

import SwiftUI

struct PasswordTextFieldView: View {

    @State private var isShowSecuredText: Bool = false
    @State var title: String
    @Binding var inputTextField: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            if isShowSecuredText == false {
                SecureField(title, text: $inputTextField)
                    .textFieldStyle(AuthTextFieldStyle())
                    .overlay(alignment: .trailing, content: {
                        Button(action: {
                            isShowSecuredText = !isShowSecuredText
                        }, label: {
                            Image(systemName: "eye")
                                .foregroundStyle(.black.opacity(0.5))
                                .padding(.bottom, 2.0)
                        })
                    })
            } else {
                TextField(title, text: $inputTextField)
                    .textFieldStyle(AuthTextFieldStyle())
                    .overlay(alignment: .trailing, content: {
                        Button(action: {
                            isShowSecuredText = !isShowSecuredText
                        }, label: {
                            Image(systemName: "eye.slash")
                                .foregroundStyle(.black.opacity(0.5))
                                .padding(.bottom, 2.0)
                        })
                    })
            }
        }
    }
}

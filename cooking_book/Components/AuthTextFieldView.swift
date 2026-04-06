//
//  AuthTextFieldView.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 5/4/26.
//

import SwiftUI

struct AuthTextFieldView: View {

    @State var title: String
    @Binding var inputTextField: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(size: 15.0))
            TextField(title, text: $inputTextField)
                .textFieldStyle(AuthTextFieldStyle())
        }
    }
}

struct AuthTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        VStack {
            configuration
                .font(.system(size: 14.0, weight: .regular))
                .textInputAutocapitalization(.never)
            Rectangle()
                .fill(.border)
                .frame(height: 0.5)
        }
    }
}

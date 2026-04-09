//
//  RoundedRectangleTextFieldStyle.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 9/4/26.
//

import SwiftUI

struct RoundedRectangleTextFieldStyle : TextFieldStyle {

    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.horizontal, 12.0)
            .background(
                RoundedRectangle(cornerRadius: 8.0)
                    .fill(.primaryFormEntry)
                    .frame(height: 48.0)
            )
            .autocorrectionDisabled()
            .textInputAutocapitalization(.never)
    }
}

//
//  PrimaryButtonStyle.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 10/4/26.
//

import Foundation
import SwiftUI

struct PrimaryButtonStyle : ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 15.0, weight: .semibold))
            .padding()
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .background(.green)
            .clipShape(RoundedRectangle(cornerRadius: 8.0))
    }
}

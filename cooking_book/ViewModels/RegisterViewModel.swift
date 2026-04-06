//
//  RegisterViewModel.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 6/4/26.
//

import Foundation
import Combine

class RegisterViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
}

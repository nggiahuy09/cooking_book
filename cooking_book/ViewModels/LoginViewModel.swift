//
//  LoginViewModel.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 5/4/26.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {
    @Published var presentRegisterView = false
    @Published var email = ""
    @Published var password = ""
}

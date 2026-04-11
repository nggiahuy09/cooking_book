//
//  AddRecipeViewModel.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 10/4/26.
//

import Foundation
import Combine

class AddRecipeViewModel : ObservableObject {
    @Published var recipeName = ""
    @Published var preparationTime = 0
    @Published var instructions = ""
}

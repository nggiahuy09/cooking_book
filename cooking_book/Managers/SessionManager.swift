//
//  SessionManager.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 7/4/26.
//

import Foundation
import Combine

class SessionManager : ObservableObject {

    @Published var sessionState: SessionState = .loggedOut

}

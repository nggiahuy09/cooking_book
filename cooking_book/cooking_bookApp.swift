//
//  cooking_bookApp.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 1/4/26.
//

import SwiftUI

@main
struct cooking_bookApp: App {

    @State var sessionManager: SessionManager = SessionManager()

    var body: some Scene {
        WindowGroup {
            switch sessionManager.sessionState {
            case .loggedIn:
                HomeView()
                    .environment(sessionManager)
            case .loggedOut:
                LoginView()
                    .environment(sessionManager)
            }
            
        }
    }
}

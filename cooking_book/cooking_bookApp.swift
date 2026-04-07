//
//  cooking_bookApp.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 1/4/26.
//

import SwiftUI

@main
struct cooking_bookApp: App {

    @StateObject private var sessionManager: SessionManager = SessionManager()

    var body: some Scene {
        WindowGroup {
            switch sessionManager.sessionState {
            case .loggedIn:
                HomeView()
                    .environmentObject(sessionManager)
            case .loggedOut:
                LoginView()
                    .environmentObject(sessionManager)
            }
            
        }
    }
}

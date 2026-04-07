//
//  HomeView.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 1/4/26.
//

import SwiftUI

struct HomeView: View {

    @StateObject private var viewModel = HomeViewModel()
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        NavigationStack {
            VStack {
                Text("Cooking Book App!")
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing, content: {
                    Button {
                        viewModel.showSignOutAlert = true
                    } label: {
                        Image(systemName: "gearshape.fill")
                            .foregroundStyle(.black)
                    }
                })
            }
            .alert("Are you sure you would like to sign out?", isPresented: $viewModel.showSignOutAlert) {
                Button("Sign Out", role: .destructive) {
                    sessionManager.sessionState = .loggedOut
                }

                Button("Cancel", role: .cancel) {}
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(SessionManager())
}

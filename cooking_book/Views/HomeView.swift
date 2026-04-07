//
//  HomeView.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 1/4/26.
//

import SwiftUI

struct HomeView: View {

    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        VStack {
            Text("Cooking Book App!")
        }
        .padding()
    }
}

#Preview {
    HomeView()
        .environmentObject(SessionManager())
}

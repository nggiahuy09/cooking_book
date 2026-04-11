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

    fileprivate func RecipeRowItem(recipe: Recipe, itemHeight: CGFloat, itemWidth: CGFloat) -> some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Image(recipe.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: itemWidth, height: itemHeight)
                .cornerRadius(12.0)
            Text(recipe.name)
                .lineLimit(1)
                .font(.system(size: 16.0, weight: .semibold))
                .foregroundStyle(.black)
        }
    }

    let spacing: CGFloat = 4.0
    let padding: CGFloat = 12.0

    var body: some View {
        GeometryReader { proxy in
            let screenWidth = proxy.size.width
            let itemWidth = (screenWidth - (spacing * 3) - (padding * 2)) / 3
            let itemHeight = 1.3 * itemWidth

            NavigationStack {
                VStack {
                    HStack {
                        ForEach(0...2, id: \.self) { index in
                            NavigationLink {
                                RecipeDetailsView(recipe: Recipe.mockReceipes[index])
                            } label: {
                                RecipeRowItem(recipe: Recipe.mockReceipes[index], itemHeight: itemHeight, itemWidth: itemWidth)
                            }
                        }
                    }
                    Spacer()
                    Button(action: {
                        viewModel.isShowAddRecipeView = true
                    }, label: {
                        Text("Add Recipe")
                    })
                    .buttonStyle(PrimaryButtonStyle())
                }
                .padding(.horizontal, padding)
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
            .sheet(isPresented: $viewModel.isShowAddRecipeView) {
                AddRecipeView()
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(SessionManager())
}

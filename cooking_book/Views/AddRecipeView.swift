//
//  AddRecipeView.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 9/4/26.
//

import SwiftUI

struct AddRecipeView: View {

    @State private var recipeName: String = ""
    @State private var instructions: String = ""
    @State private var preparationTime: Int = 0

    var body: some View {
        VStack(alignment: .leading) {
            Text("What's new?")
                .font(.system(size: 24.0, weight: .bold))
                .padding(.bottom, 20.0)
                .padding(.top, 8.0)

            ZStack {
                RoundedRectangle(cornerRadius: 8.0)
                    .fill(.primaryFormEntry)
                    .frame(height: 200.0)
                Image(systemName: "photo.fill")
                    .font(.system(size: 24.0))
                    .foregroundStyle(.black.opacity(0.7))
            }
            .padding(.bottom, 24.0)

            Text("Recipe name")
                .font(.system(size: 16.0, weight: .semibold))
                .padding(.bottom)
            TextField("Recipe name", text: $recipeName)
                .textFieldStyle(RoundedRectangleTextFieldStyle())
                .padding(.bottom, 40.0)

            HStack(alignment: .firstTextBaseline) {
                Text("Preparation time")
                    .font(.system(size: 16.0, weight: .semibold))
                    .padding(.bottom)
                Spacer()
                Picker(selection: $preparationTime) {
                    ForEach(0...120, id: \.self) { time in
                        if time % 5 == 0 {
                            Text("\(time) \(time > 1 ? "mins" : "min")")
                                .tag(time)
                        }
                    }
                } label: {
                    Text("Prep time")
                }
            }

            Text("Cooking instructions")
                .font(.system(size: 16.0, weight: .semibold))
                .padding(.bottom)
            TextEditor(text: $instructions)
                .frame(height: 250.0)
                .padding(8.0)
                .background(.primaryFormEntry)
                .scrollContentBackground(.hidden)
                .cornerRadius(8.0)

            Button(action: {
                // TODO: handle login later
            }, label: {
                Text("Submit")
            })
            .buttonStyle(PrimaryButtonStyle())
            .padding(.bottom)

            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    AddRecipeView()
}

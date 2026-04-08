//
//  ReceipeDetailsView.swift
//  cooking_book
//
//  Created by Nguyễn Gia Huy on 7/4/26.
//

import SwiftUI

struct ReceipeDetailsView: View {

    let receipe: Receipe

    var body: some View {
        GeometryReader { proxy in
            let imageWidth: CGFloat = proxy.size.width - (12.0 * 2)

            VStack(alignment: .leading) {
                Image(receipe.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: imageWidth, maxHeight: 250.0)
                    .clipShape(RoundedRectangle(cornerRadius: 12.0))
                    .clipped()
                HStack {
                    Text(receipe.name)
                        .font(.system(size: 28.0, weight: .semibold))
                    Spacer()
                    Image(systemName: "clock.fill")
                        .font(.system(size: 20.0))
                        .foregroundStyle(.black)
                    Text("\(receipe.time) mins")
                        .font(.system(size: 18.0, weight: .semibold))
                        .foregroundStyle(.black)

                }
                Text(receipe.instructions)
                    .font(.system(size: 20.0, weight: .regular))
                    .padding(.top)
                    .lineSpacing(6.0)

                Spacer()
            }
            .padding(.horizontal, 12.0)
            .navigationTitle("Receipe details")
        }
    }
}

#Preview {
    ReceipeDetailsView(receipe: Receipe.mockReceipes[0])
}

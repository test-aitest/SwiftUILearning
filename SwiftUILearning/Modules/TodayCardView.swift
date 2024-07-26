//
//  TodayCardView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/15.
//

import SwiftUI

struct TodayCardView: View {
    var categoryStr: String
    var title: String
    var description: String
    var imageName: String
    var titleFont: Font
    var titleColor: Color
    var descriptionColor: Color
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(imageName)
                .frame(width: 335, height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
            VStack {
                Text(categoryStr)
                    .font(CATEGORY)
                    .foregroundColor(GRAY_500)
                    .padding(.bottom, 8)
                    .frame(width: 216.0, height: 13, alignment: .leadingFirstTextBaseline)
                Text(title)
                    .font(FONT_24_W5)
                    .foregroundColor(titleColor)
                    .frame(width: 216.0, alignment: .leading)
            }
            .padding(.top, 24)
            .padding(.leading, 16)
            
            Text(description)
                .font(CARD_DESCRIPTION)
                .foregroundColor(descriptionColor)
                .padding(.top, 336)
                .padding(.leading, 16)
                .frame(width: 270, alignment: .leading)
        }
    }
}

#Preview {
    TodayCardView(categoryStr: "GAMES", title: "Top Apple\nArcade Games", description: "", imageName: "Card-2", titleFont: CARD_TITLE, titleColor: GRAY_000, descriptionColor: GRAY_700).preferredColorScheme(.dark)
}

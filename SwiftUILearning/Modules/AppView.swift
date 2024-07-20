//
//  AppView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/17.
//

import SwiftUI

struct AppView: View {
    var appImage: String
    var appTitle: String
    var appCategory: String
    var price: String
    
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                Image(appImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 48, height: 48)
                    .cornerRadius(10.0)
                VStack(alignment: .leading) {
                    Text(appTitle)
                        .font(APP_ITEM_TITLE_smem)
                        .foregroundColor(GRAY_000)
                    Text(appCategory)
                        .font(APP_ITEM_CATEGORY)
                        .foregroundColor(GRAY_600)
                }
                .frame(width: 156, alignment: .leading)
                
                ZStack {
                    Image("Price")
                    Text(price)
                        .foregroundColor(.blue)
                        .font(APP_ITEM_PRICE)
                }
            }
            .frame(height: 48)
        }
        .background(.black)
    }
}

#Preview {
    AppView(appImage: "Game_1", appTitle: "Dandara Trail of Fear\nEdition", appCategory: "A Metroidvania Advent ABCDEFGHIJK", price: "¥730")
}

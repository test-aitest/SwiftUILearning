//
//  AppListView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/16.
//

import SwiftUI

struct AppListView: View {
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .cornerRadius(15)
                .frame(width: 335, height: 400)
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("THE DAILY LIST")
                        .foregroundColor(GRAY_500)
                        .font(CATEGORY)
                    Text("Defy gravity")
                        .foregroundColor(GRAY_000)
                        .font(CARD_TITLE)
                }
                
                VStack(spacing: 24) {
                    ForEach(0..<appList.count, id: \.self) { index in
                        appList[index]
                    }
                }
            }
            .padding(.leading, 16).padding(.top, 24).padding(.bottom, 40)
        }
    }
}

#Preview {
    AppListView()
}

//
//  TodayView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/17.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        VStack(spacing: 20) {
            ForEach(0..<cardList.count-1, id: \.self) { index in
                cardList[index]
            }
            AppListView()
            cardList[cardList.count-1]
        }
    }
}

#Preview {
    TodayView()
}

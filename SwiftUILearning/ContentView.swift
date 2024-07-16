//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/13.
//

import SwiftUI

struct ContentView: View {
    let cardList = [
        TodayCardView(categoryStr: "HOW TO", title: "忙しい朝の\n情報収集", description: "天気や鉄道の運行状況など\n家を出るまでに効率よく情報収集。", imageName: "Card", titleFont: CATEGORY, titleColor: GRAY_700, descriptionColor: GRAY_300),
        TodayCardView(categoryStr: "STAY HOME", title: "筋力トレーニングに\nチャレンジ", description: "運動不足を解消しましょう。\n道具は必要ありません！", imageName: "Card-1", titleFont: CATEGORY, titleColor: GRAY_700, descriptionColor: GRAY_700),
        TodayCardView(categoryStr: "GAMES", title: "Top Apple\nArcade Games", description: "", imageName: "Card-2", titleFont: CARD_TITLE, titleColor: GRAY_000, descriptionColor: GRAY_000),
        TodayCardView(categoryStr: "HOW TO", title: "安全で簡単な\nパスワード管理", description: "パスワード管理アプリを利用して\nサービスごとにパスワードを設定しよう", imageName: "Card-3", titleFont: CATEGORY, titleColor: GRAY_700, descriptionColor: GRAY_300)
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("WEDNESDAY, APRIL 15")
                            .font(CATEGORY)
                            .foregroundColor(GRAY_400)
                        Text("Today")
                            .font(PAGE_TITLE)
                            .foregroundColor(Color.white)
                            .lineSpacing(40.0)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Image("Avator")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                }
                .frame(width: 335)
                
                VStack(spacing: 20) {
                                ForEach(0..<cardList.count, id: \.self) { index in
                                    cardList[index]
                                }
                            }
            }
            .padding(.horizontal, 20.0).padding(.top, 28.0)
        }
        .frame(maxWidth: .infinity)
        .background(Color.black)
        
    }
}

#Preview {
    ContentView()
}

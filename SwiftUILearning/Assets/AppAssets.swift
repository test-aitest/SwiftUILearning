//
//  Assets.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/17.
//

import Foundation

let cardList = [
    TodayCardView(categoryStr: "HOW TO", title: "忙しい朝の\n情報収集", description: "天気や鉄道の運行状況など\n家を出るまでに効率よく情報収集。", imageName: "Card", titleFont: CATEGORY, titleColor: GRAY_700, descriptionColor: GRAY_300),
    TodayCardView(categoryStr: "STAY HOME", title: "筋力トレーニングに\nチャレンジ", description: "運動不足を解消しましょう。\n道具は必要ありません！", imageName: "Card-1", titleFont: CATEGORY, titleColor: GRAY_700, descriptionColor: GRAY_700),
    TodayCardView(categoryStr: "GAMES", title: "Top Apple\nArcade Games", description: "", imageName: "Card-2", titleFont: CARD_TITLE, titleColor: GRAY_000, descriptionColor: GRAY_000),
    TodayCardView(categoryStr: "HOW TO", title: "安全で簡単な\nパスワード管理", description: "パスワード管理アプリを利用して\nサービスごとにパスワードを設定しよう", imageName: "Card-3", titleFont: CATEGORY, titleColor: GRAY_700, descriptionColor: GRAY_300)
]

let appList = [
    AppView(appImage: "Game_1", appTitle: "Dandara Trail of Fear\nEdition", appCategory: "A Metroidvania Advent ABCDEFGHIJK", price: "¥730"),
    AppView(appImage: "Game_2", appTitle: "Piloteer", appCategory: "Adventure", price: "¥370"),
    AppView(appImage: "Game_3", appTitle: "Grab Lab", appCategory: "Silly Gravity\nArcade Puzzler", price: "GET"),
    AppView(appImage: "Game_4", appTitle: "Teslagrad Lab", appCategory: "A hard-drawn\nmagnetic puzzle", price: "¥610")
]

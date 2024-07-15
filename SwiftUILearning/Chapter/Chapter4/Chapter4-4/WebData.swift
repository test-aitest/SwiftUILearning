//
//  WebData.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/15.
//

import Foundation

struct WebData: Identifiable {
    var id = UUID()
    var name: String
    var url: String
    var favicon: String
}

var webList = [
    WebData(name: "アップル", url: "aaa", favicon: "apple"),
    WebData(name: "カワスイ", url: "https://", favicon: "kawa-sui"),
    WebData(name: "東京都現代美術館", url: "https://", favicon: "mo"),
    WebData(name: "川崎水族館", url: "https://", favicon: "tnm")
]

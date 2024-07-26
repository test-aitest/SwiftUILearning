//
//  CardModel.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/24.
//

import Foundation
import SwiftUI

struct CardModel: Identifiable {
    var id = UUID().uuidString
    var appName: String
    var appDescription: String
    var appLogo: String
    var bannerTitle: String
    var platformTitle: String
    var artwork: String
    var color: Color
}

var cardItem: [CardModel] = [
    CardModel(appName: "appName1", appDescription: "appDescription1", appLogo: "Card", bannerTitle: "bannerTitle1", platformTitle: "platformTitle1", artwork: "artwork1", color: Color.green),
    CardModel(appName: "appName2", appDescription: "appDescription2", appLogo: "Card-1", bannerTitle: "bannerTitle2", platformTitle: "platformTitle2", artwork: "artwork2", color: Color.orange)
]

let dummtText = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

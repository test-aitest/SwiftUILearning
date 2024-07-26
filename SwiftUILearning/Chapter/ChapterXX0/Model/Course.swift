//
//  Course.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/21.
//

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var color: Color
    var image: String
    var logo: String
    var show: Bool
    var index: Double
}

var courses = [
    Course(
        title: "UI Design for iOS 14",
        subtitle: "20 sections",
        color: Color(hex: "CDCFCD"),
        image: "Card",
        logo: "Logo UI Design",
        show: false,
        index: -1
    ),
    Course(
        title: "Build a SwiftUI app for iOS 14",
        subtitle: "20 sections",
        color: Color(#colorLiteral(red: 0.3150139749, green: 0, blue: 0.8982304931, alpha: 1)),
        image: "Card-1",
        logo: "Logo SwiftUI",
        show: false,
        index: -1
    ),
    Course(
        title: "UI Design for iPadOS",
        subtitle: "12 sections",
        color: Color(#colorLiteral(red: 0, green: 0.7283110023, blue: 1, alpha: 1)),
        image: "Card-2",
        logo: "Logo UI Design",
        show: false,
        index: -1
    ),
    Course(
        title: "UI Design for macOS",
        subtitle: "12 sections",
        color: Color(#colorLiteral(red: 0.9467853904, green: 0.2021691203, blue: 0.3819385171, alpha: 1)),
        image: "Card-3",
        logo: "Logo UI Design",
        show: false,
        index: -1
    )
]

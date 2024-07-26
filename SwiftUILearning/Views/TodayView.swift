//
//  TodayView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/17.
//

import SwiftUI

struct TodayView: View {
    @State private var showDetailView = false
    @State private var selectedCardIndex: IdentifiableInt?

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(0..<cardList.count-1, id: \.self) { index in
                    Button {
//                        withAnimation(.interactiveSpring(response: 0.6, ))
                    } label: {
                        cardList[index]
                    }
                }
                .buttonStyle(PlainButtonStyle())
                AppListView()
                cardList[cardList.count-1]
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color.black)
    }

    // Function to determine the destination view
    @ViewBuilder
    private func destinationView(for index: Int) -> some View {
        switch index {
        case 0:
            HowToDetailView()
        case 1:
            StayHomeDetailView()
        default:
            Text("Default Detail View")
        }
    }
}

struct IdentifiableInt: Identifiable {
    var id: Int
}

#Preview {
    TodayView()
}

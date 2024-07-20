//
//  TodayView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/17.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(0..<cardList.count-1, id: \.self) { index in
                        NavigationLink(destination: destinationView(for: index)) {
                            cardList[index]
                        }
                    }.buttonStyle(PlainButtonStyle())
                    AppListView()
                    cardList[cardList.count-1]
                }
            }
            .frame(maxWidth: .infinity)
            .background(.black)
        }
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

#Preview {
    TodayView()
}

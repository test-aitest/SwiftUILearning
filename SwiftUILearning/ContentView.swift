//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/13.
//

import SwiftUI

struct ContentView: View {
    var tabNum: Int = 1
    
    var body: some View {
        ScrollView {
            VStack(spacing: 8) {
                HeadView()
                
                switch tabNum {
                case 1:
                    TodayView()
                case 2:
                    GamesView()
                case 3:
                    AppsView()
                case 4:
                    ArcadeView()
                case 5:
                    SearchView()
                default: TodayView()
                }
            }
            .padding(.horizontal, 20.0).padding(.top, 28.0).padding(.bottom, 24)
        }
        .frame(maxWidth: .infinity)
        .background(Color.black)
        
    }
}

#Preview {
    ContentView()
}

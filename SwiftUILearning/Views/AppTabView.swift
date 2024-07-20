//
//  AppTabView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/17.
//

import SwiftUI

struct AppTabView: View {
    @State var selectionTag = 1
    
    init() {
        UITabBar.appearance().barTintColor = .black
    }
    
    var body: some View {

        TabView(selection: $selectionTag) {
            ContentView(tabNum: selectionTag).tabItem {
                VStack {
                    if selectionTag == 1 {
                        Image("Today.filled")
                    } else {
                        Image("Today")
                    }
                    Text("Today")
                        .font(TAB_LABEL)
                        .foregroundStyle(GRAY_500)
                }
            }.tag(1)
            GamesView().tabItem {
                VStack {
                    if selectionTag == 2 {
                        Image("Games.filled")
                    } else {
                        Image("Games")
                    }
                    Text("Games")
                        .font(TAB_LABEL)
                        .foregroundStyle(GRAY_500)
                }
            }.tag(2)
            AppsView().tabItem {
                VStack {
                    if selectionTag == 3 {
                        Image("Apps.filled")
                    } else {
                        Image("Apps")
                    }
                    Text("Apps")
                        .font(TAB_LABEL)
                        .foregroundStyle(GRAY_500)
                }
            }.tag(3)
            ArcadeView().tabItem {
                VStack {
                    if selectionTag == 4 {
                        Image("Arcade.filled")
                    } else {
                        Image("Arcade")
                    }
                    Text("Arcade")
                        .font(TAB_LABEL)
                        .foregroundStyle(GRAY_500)
                }
            }.tag(4)
           SearchView().tabItem {
               VStack {
                   if selectionTag == 5 {
                       Image("Search.filled")
                   } else {
                       Image("Search")
                   }
                   Text("Search")
                       .font(TAB_LABEL)
                       .foregroundStyle(GRAY_500)
               }
           }.tag(5)
        }
    }
}

#Preview {
    AppTabView()
}

//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/13.
//

import SwiftUI

struct ContentView: View {
    @State var selectionTag = 1
    
    init() {
        UITabBar.appearance().barTintColor = .black
    }
    
    var body: some View {
        VStack(spacing: 8) {
            HeadView()
            TabView(selection: $selectionTag) {
                createTab(view: TodayView(), title: "Today", image: "Today", filledImage: "Today.filled", tag: 1)
                createTab(view: GamesView(), title: "Games", image: "Games", filledImage: "Games.filled", tag: 2)
                createTab(view: AppsView(), title: "Apps", image: "Apps", filledImage: "Apps.filled", tag: 3)
                createTab(view: ArcadeView(), title: "Arcade", image: "Arcade", filledImage: "Arcade.filled", tag: 4)
                createTab(view: SearchView(), title: "Search", image: "Search", filledImage: "Search.filled", tag: 5)
            }
        }.background(.black)
    }
    
    private func createTab<V: View>(view: V, title: String, image: String, filledImage: String, tag: Int) -> some View {
        view.tabItem {
            VStack {
                Image(selectionTag == tag ? filledImage : image)
                Text(title)
                    .font(TAB_LABEL)
                    .foregroundStyle(GRAY_500)
            }
        }.tag(tag)
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/21.
//

import SwiftUI

struct ChapterContentView: View {
//    @ViewBuilder
//        var body: some View {
//            #if os(iOS)
//            Slidebar()
//            #else
//            Slidebar()
//                .frame(minWidth: 1000, minHeight: 600)
//            #endif
//        }
    @State var expand: Bool = false
    var body: some View {
        Ellipse()
            .fill(.blue)
            .frame(width: expand ? 100 : 200, height: expand ? 200 : 100)
            .offset(y: expand ? -250 : 0)
            .onTapGesture {
                self.expand.toggle()
            }
            .animation(.easeIn, value: expand)
    }
}

#Preview {
    ChapterContentView()
}

//
//  Chapter4-4View.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/15.
//

import SwiftUI

struct Chapter4_4View: View {
    
    var body: some View {
        NavigationView {
            List(webList) { item in
                HStack {
                    Image(item.favicon)
                        .resizable()
                        .frame(width: 50, height: 50)
                    if let url = URL(string: item.url), UIApplication.shared.canOpenURL(url) {
                        Link(item.name, destination: url)
                    } else {
                        Text(item.name).foregroundColor(.gray)
                        + Text("URLエラー").foregroundColor(.red)
                    }
                }
            }.navigationTitle("Webリンク")
        }.navigationViewStyle(.stack)
    }
}

#Preview {
    Chapter4_4View()
}

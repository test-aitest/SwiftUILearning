//
//  GamesView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/17.
//

import SwiftUI

struct GamesView: View {
    @AppStorage("name") private var name: String = "Sauna1137"
    
    var body: some View {
        VStack {
            Text(name)
                .foregroundColor(.blue)
            TextField("名前を入力してね", text: $name)
        }
    }
}

#Preview {
    GamesView()
}

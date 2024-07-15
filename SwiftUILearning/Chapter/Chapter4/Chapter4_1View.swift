//
//  Chapter4_1View.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/15.
//

import SwiftUI

struct Chapter4_1View: View {
    let alfaString = ["AAAA", "BBBB", "CCCC", "DDDDD"]
    let betaString = ["aaaa", "bbbb", "cccc", "dddd"]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResult, id: \.self) {item in
                    Text(item)
                }
            }
            .searchable(text: $searchText)
            .keyboardType(.default)
            .navigationTitle("タイトル")
        }
    }
    
    var searchResult: [String] {
        if searchText.isEmpty {
            return alfaString
        } else {
            return alfaString.filter { $0.contains(searchText)
            }
        }
    }
}

struct Photo: View {
    var body: some View {
        HStack {
            Image("Card")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding()
            Text("One Card")
        }
    }
}

#Preview {
    Chapter4_1View()
}

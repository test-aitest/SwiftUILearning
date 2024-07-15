//
//  Chapter4_2View.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/15.
//

import SwiftUI

struct Chapter4_2View: View {
    let referClass = Chapter4_1View()
    
    var body: some View {
        List {
            Section(header: Text("alfa").font(.largeTitle).padding(.top), 
                    footer: Text("alfaはこちらです")) {
                ForEach(referClass.alfaString, id: \.self) { item in
                    Text(item)
                }
            }
            Section(header: Text("beta")) {
                ForEach(referClass.betaString, id: \.self) { item in
                    Text(item)
                }
            }
        }
        .listStyle(.grouped)
    }
}

#Preview {
    Chapter4_2View()
}

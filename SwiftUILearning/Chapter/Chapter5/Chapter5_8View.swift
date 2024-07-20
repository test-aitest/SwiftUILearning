//
//  Chapter5_8View.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/20.
//

import SwiftUI

struct Chapter5_8View: View {
    @State var name: String = ""
    
    var body: some View {
        TextField("お名前は？？", text: $name)
            .textFieldStyle(.roundedBorder)
            .frame(width: 300)
            .padding()
        if !name.isEmpty {
            Text("Hello, \(name)!")
        } else {
            Text("Welcome!!")
        }
    }
}

#Preview {
    Chapter5_8View()
}

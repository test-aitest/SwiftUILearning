//
//  CloseButton.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/21.
//

import SwiftUI

struct CloseButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .font(.system(size: 17, weight: .bold))
            .foregroundColor(.white)
            .padding(.all, 10)
            .background(Color.black.opacity(0.6))
            .clipShape(Circle())
    }
}

#Preview {
    CloseButton()
}

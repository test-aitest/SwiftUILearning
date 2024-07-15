//
//  RowView.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/15.
//

import SwiftUI

struct RowView: View {
    var photo: PhotoData
    
    var body: some View {
        HStack {
            Image(photo.imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray))
            Text(photo.title)
            Spacer()
        }
    }
}

#Preview {
    NavigationView {
        List(photoArray) {item in
            RowView(photo: item)
                .previewLayout(.sizeThatFits)
        }
        .navigationTitle("写真リスト")
    }
}

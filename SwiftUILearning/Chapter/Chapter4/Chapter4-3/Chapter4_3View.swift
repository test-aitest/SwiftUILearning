//
//  Chapter4_3View.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/15.
//

import SwiftUI

struct Chapter4_3View: View {
    
    var body: some View {
        NavigationView {
            List(photoArray) {item in
                NavigationLink(destination: PhotoDetailView(photo: item)) {
                    RowView(photo: item)
                }
            }
            .navigationTitle("写真リスト")
        }
    }
}

struct PhotoDetailView: View {
    var photo: PhotoData
    
    var body: some View {
        VStack {
            HStack {
                Image(photo.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding([.trailing,.bottom])
                    .padding(.leading, 5.0)
                Text(photo.title)
                    .font(.title)
                    .padding()
            }
            Spacer()
        }
    }
}

#Preview {
    Chapter4_3View()
}

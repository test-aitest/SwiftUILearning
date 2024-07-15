//
//  PhotoData.swift
//  SwiftUILearning
//
//  Created by 矢部竜季 on 2024/07/15.
//

import Foundation

struct PhotoData: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
}

var photoArray = [
    PhotoData(imageName: "IMG_0996", title: "111"),
    PhotoData(imageName: "IMG_1035", title: "222"),
    PhotoData(imageName: "IMG_1504", title: "333"),
    PhotoData(imageName: "IMG_1531", title: "444"),
    PhotoData(imageName: "IMG_2139", title: "555"),
    PhotoData(imageName: "IMG_2250", title: "666"),
    PhotoData(imageName: "IMG_2269", title: "777"),
    PhotoData(imageName: "IMG_2470", title: "888"),
    PhotoData(imageName: "IMG_2883", title: "999"),
    PhotoData(imageName: "IMG_4199", title: "1111"),
    PhotoData(imageName: "IMG_6460", title: "1212"),
    PhotoData(imageName: "IMG_7122", title: "1313"),
    PhotoData(imageName: "IMG_7216", title: "1414"),
    PhotoData(imageName: "IMG_7745", title: "1515"),
    PhotoData(imageName: "IMG_7851", title: "1616")
]

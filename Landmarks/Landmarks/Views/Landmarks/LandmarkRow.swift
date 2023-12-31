//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by QiuXc on 2023/9/3.
//

import SwiftUI

// 地标列表行
struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .cornerRadius(4)
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            // 是否收藏
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks: [Landmark] = ModelData().landmarks
    static var previews: some View {
        // 使用 Group 渲染两个不同的视图
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
